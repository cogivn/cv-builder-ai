import 'package:cv_builder_ai/src/core/config/environment.dart';
import 'package:cv_builder_ai/src/core/errors/api_error.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';

import '../../../domain/auth/entities/auth_token.dart';
import '../../../domain/auth/repositories/auth_repository.dart';
import '../../../domain/auth/value_objects/password.dart';
import '../../../domain/user/value_objects/email.dart';


@LazySingleton(as: AuthRepository)
class AuthRepositoryMockup implements AuthRepository {
  AuthRepositoryMockup();

  final List<Map<String, String>> _mockUsers = [
    {
      'email': 'test@example.com',
      'password': 'password123',
      'fullName': 'Test User'
    },
  ];

  String? _currentUserEmail;

  @override
  Future<Result<AuthToken>> signIn({
    required Email email,
    required Password password,
  }) async {
    final user = _mockUsers.firstWhere(
      (user) =>
          user['email'] == email.value && user['password'] == password.value,
      orElse: () => {},
    );

    if (user.isNotEmpty) {
      _currentUserEmail = email.value;
      return AuthToken(
        accessToken: 'mock_token',
        refreshToken: 'refresh_token',
        expiresAt: DateTime.now(),
      ).toSuccess();
    } else {
      return ApiError.unauthorized().toFailure();
    }
  }

  @override
  Future<Result<void>> signOut() async {
    _currentUserEmail = null;
    return ().toSuccess();
  }

  @override
  Future<Result<void>> forgotPassword(Email email) async {
    final userExists = _mockUsers.any((user) => user['email'] == email.value);
    if (userExists) {
      return ().toSuccess();
    } else {
      return ApiError.badRequest(message: 'Email not found').toFailure();
    }
  }

  @override
  Future<Result<AuthToken>> refreshToken(String refreshToken) async {
    if (_currentUserEmail != null) {
      return AuthToken(
        accessToken: 'new_mock_token',
        refreshToken: 'new_refresh_token',
        expiresAt: DateTime.now(),
      ).toSuccess();
    }
    return ApiError.unauthorized(message: 'No active session').toFailure();
  }

  @override
  Future<Result<void>> resetPassword(
      {required String token, required Password newPassword}) async {
    if (_currentUserEmail != null) {
      final userIndex = _mockUsers.indexWhere(
        (user) => user['email'] == _currentUserEmail,
      );
      if (userIndex != -1) {
        _mockUsers[userIndex]['password'] = newPassword.value;
        return ().toSuccess();
      }
    }
    return ApiError.unauthorized(message: 'Invalid token or user not found').toFailure();
  }

  @override
  Future<Result<AuthToken>> signUp({
    required Email email,
    required Password password,
    required String fullName,
  }) async {
    final userExists = _mockUsers.any((user) => user['email'] == email.value);
    if (!userExists) {
      _mockUsers.add({
        'email': email.value,
        'password': password.value,
        'fullName': fullName
      });
      _currentUserEmail = email.value;
      return AuthToken(
        accessToken: 'mock_token',
        refreshToken: 'refresh_token',
        expiresAt: DateTime.now(),
      ).toSuccess();
    } else {
      return ApiError.badRequest(message: 'Email already in use').toFailure();
    }
  }

  @override
  Future<Result<bool>> isAuthenticated() async {
    return (_currentUserEmail != null).toSuccess();
  }
}
