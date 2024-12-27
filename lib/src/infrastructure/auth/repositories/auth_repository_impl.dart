import 'dart:ffi';

import 'package:cv_builder_ai/src/core/extensions/optional_x.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

import '../../../core/errors/api_error.dart';
import '../../../core/services/storage_service.dart';
import '../../../domain/auth/entities/auth_token.dart';
import '../../../domain/auth/repositories/auth_repository.dart';
import '../../../domain/auth/value_objects/password.dart';
import '../../../domain/user/value_objects/email.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio _dio;

  AuthRepositoryImpl(this._dio);

  @override
  Future<Result<AuthToken>> signIn({
    required Email email,
    required Password password,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'email': email.value,
          'password': password.value,
        },
      );

      final token = AuthToken.fromJson(response.data);
      return Success(token);
    } on DioException catch (e) {
      return Failure(e.error as ApiError);
    }
  }

  @override
  Future<Result<AuthToken>> signUp({
    required Email email,
    required Password password,
    required String fullName,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: {
          'email': email.value,
          'password': password.value,
          'fullName': fullName,
        },
      );

      final token = AuthToken.fromJson(response.data);
      return Success(token);
    } on DioException catch (e) {
      return Failure(e.error as ApiError);
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await _dio.post('/auth/logout');
      await Storage.setAccessToken(null);
      return const Success(Void);
    } on DioException catch (e) {
      return Failure(e.error as ApiError);
    }
  }

  @override
  Future<Result<AuthToken>> refreshToken(String refreshToken) async {
    try {
      final response = await _dio.post(
        '/auth/refresh',
        data: {'refreshToken': refreshToken},
      );

      final token = AuthToken.fromJson(response.data);
      return Success(token);
    } on DioException catch (e) {
      return Failure(e.error as ApiError);
    }
  }

  @override
  Future<Result<void>> forgotPassword(Email email) async {
    try {
      await _dio.post(
        '/auth/forgot-password',
        data: {'email': email.value},
      );
      return const Success(Void);
    } on DioException catch (e) {
      return Failure(e.error as ApiError);
    }
  }

  @override
  Future<Result<void>> resetPassword({
    required String token,
    required Password newPassword,
  }) async {
    try {
      await _dio.post(
        '/auth/reset-password',
        data: {
          'token': token,
          'password': newPassword.value,
        },
      );
      return const Success(Void);
    } on DioException catch (e) {
      return Failure(e.error as ApiError);
    }
  }

  @override
  Future<Result<bool>> isAuthenticated() async {
    try {
      final token = Storage.accessToken;
      return Success(token.isNotNullOrEmpty);
    } catch (e) {
      return const Success(false);
    }
  }
} 