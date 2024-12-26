import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../l10n/messages.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError implements Exception {
  const factory ApiError.request({
    required String message,
    String? code,
    int? statusCode,
    dynamic rawData,
  }) = RequestError;

  const factory ApiError.network({
    String? message,
    @Default('NETWORK_ERROR') String code,
    int? statusCode,
  }) = NetworkError;

  const factory ApiError.server({
    String? message,
    @Default('SERVER_ERROR') String code,
    @Default(500) int statusCode,
  }) = ServerError;

  const factory ApiError.unauthorized({
    String? message,
    @Default('UNAUTHORIZED') String code,
    @Default(401) int statusCode,
  }) = UnauthorizedError;

  const factory ApiError.notFound({
    String? message,
    @Default('NOT_FOUND') String code,
    @Default(404) int statusCode,
  }) = NotFoundError;

  const factory ApiError.badRequest({
    String? message,
    @Default('BAD_REQUEST') String code,
    @Default(400) int statusCode,
  }) = BadRequestError;

  const factory ApiError.cancelled({
    String? message,
    @Default('CANCELLED') String code,
  }) = CancelledError;

  const ApiError._();

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);

  bool get isNetworkError => this is NetworkError;
  bool get isServerError => this is ServerError;
  bool get isUnauthorized => this is UnauthorizedError;
  bool get isNotFound => this is NotFoundError;
  bool get isBadRequest => this is BadRequestError;
  bool get isCancelled => this is CancelledError;

  String getErrorMessage(BuildContext context) => when(
        request: (message, _, __, ___) => message,
        network: (message, _, __) => message ?? context.s.apiErrorNetwork,
        server: (message, _, __) => message ?? context.s.apiErrorServer,
        unauthorized: (message, _, __) => message ?? context.s.apiErrorUnauthorized,
        notFound: (message, _, __) => message ?? context.s.apiErrorNotFound,
        badRequest: (message, _, __) => message ?? context.s.apiErrorBadRequest,
        cancelled: (message, _) => message ?? context.s.apiErrorCancelled,
      );

  @override
  String toString() => when(
        request: (message, code, statusCode, _) =>
            'ApiError: $message ${code != null ? '($code)' : ''} ${statusCode != null ? '[Status: $statusCode]' : ''}',
        network: (message, code, statusCode) =>
            'NetworkError: ${message ?? 'Network Error'} ($code) ${statusCode != null ? '[Status: $statusCode]' : ''}',
        server: (message, code, statusCode) =>
            'ServerError: ${message ?? 'Server Error'} ($code) [Status: $statusCode]',
        unauthorized: (message, code, statusCode) =>
            'UnauthorizedError: ${message ?? 'Unauthorized'} ($code) [Status: $statusCode]',
        notFound: (message, code, statusCode) =>
            'NotFoundError: ${message ?? 'Not Found'} ($code) [Status: $statusCode]',
        badRequest: (message, code, statusCode) =>
            'BadRequestError: ${message ?? 'Bad Request'} ($code) [Status: $statusCode]',
        cancelled: (message, code) =>
            'CancelledError: ${message ?? 'Request cancelled'} ($code)',
      );
} 