import 'dart:async';

import 'package:cv_builder_ai/src/core/config/environment.dart';
import 'package:cv_builder_ai/src/core/extensions/optional_x.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:talker/talker.dart';
import '../../../generated/l10n.dart';
import '../errors/api_error.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import '../interceptors/error_interceptor.dart';
import '../utils/logger.dart';

@module
abstract class NetworkModule {
  @Named('baseUrl')
  String get baseUrl => Env.apiUrl;

  @singleton
  Dio dio(
    @Named('baseUrl') String url,
    Talker talker,
  ) {
    final dio = Dio(BaseOptions(
      baseUrl: url,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));

    dio.interceptors.addAll([
      ErrorInterceptor(),
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printResponseMessage: true,
        ),
      ),
    ]);

    return dio;
  }
}

extension FutureX<T extends Object> on Future<T> {
  FutureOr<T> getOrThrow() async {
    try {
      return await this;
    } on ApiError {
      rethrow;
    } on DioException catch (e) {
      logger.e(e, stackTrace: e.stackTrace);
      throw e.toApiError();
    } on Error catch (e) {
      logger.e(e, stackTrace: e.stackTrace);
      throw ApiError.badRequest(message: e.toString());
    } catch (e) {
      throw ApiError.badRequest(message: e.toString());
    }
  }

  FutureOr<Result<R>> tryGet<R extends Object>(
      FutureOr<R> Function(T) response) async {
    try {
      return (await response.call(await getOrThrow())).toSuccess();
    } on ApiError catch (e) {
      return e.toFailure();
    } catch (e) {
      return ApiError.badRequest(message: e.toString()).toFailure();
    }
  }
}

extension FutureResultX<T extends Object> on Future<Result<T>> {
  FutureOr<W> fold<W>(
    W Function(T success) onSuccess,
    W Function(ApiError failure) onFailure,
  ) async {
    try {
      final result = await getOrThrow();
      return onSuccess(result);
    } on ApiError catch (e) {
      return onFailure(e);
    }
  }
}

extension DioExceptionX on DioException {
  ApiError toApiError() {
    if (type == DioExceptionType.cancel) {
      return ApiError.cancelled();
    } else if (error is ApiError) {
      return error as ApiError;
    } else {
      final statusCode = response?.statusCode ?? -1;
      String? responseMessage;
      if (response?.data is Map<String, dynamic>) {
        responseMessage = response?.data?['message'];
        if (responseMessage.isNotNullOrBlank && kDebugMode) {
          responseMessage = 'E$statusCode: $responseMessage';
        }
      }
      responseMessage = responseMessage ?? S.current.apiErrorBadRequest;
      if (statusCode == 401) {
        return ApiError.unauthorized(message: responseMessage);
      } else if (statusCode >= 400 && statusCode < 500) {
        return ApiError.server(
            statusCode: statusCode, message: responseMessage);
      } else {
        return ApiError.network(
            statusCode: statusCode, message: responseMessage);
      }
    }
  }
}
