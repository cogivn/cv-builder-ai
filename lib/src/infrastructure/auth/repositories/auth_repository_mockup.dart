import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';

import '../../../core/errors/api_error.dart';
import '../../../domain/auth/entities/auth_token.dart';
import '../../../domain/auth/repositories/auth_repository.dart';
import '../../../domain/auth/value_objects/email.dart';
import '../../../domain/auth/value_objects/password.dart';

@LazySingleton(as: AuthRepository)
@test
class AuthRepositoryMockup implements AuthRepository {
  // Mock user data
  final List<Map<String, dynamic>> _mockUsers = [
    {
      'email': 'test@example.com',
      'password': 'Test@123',
      'fullName': 'Test User',
      'token': AuthToken(
        accessToken: 'mock_access_token_1',
        refreshToken: 'mock_refresh_token_1',
        expiresAt: DateTime.now().add(const Duration(hours: 1)),
      ),
    },
  ];

  String? _currentUserEmail;
  bool _isAuthenticated = false;
  AuthToken? _currentToken;

  AuthToken _generateMockToken() {
    return AuthToken(
      accessToken: 'mock_token_${DateTime.now().millisecondsSinceEpoch}',
      refreshToken: 'mock_refresh_${DateTime.now().millisecondsSinceEpoch}',
      expiresAt: DateTime.now().add(const Duration(hours: 1)),
    );
  }

  @override
  AuthToken? get currentToken => _currentToken;

  @override
  Future<Result<AuthToken>> signIn({
    required Email email,
    required Password password,
  }) async {
    try {
      if (!email.isValid) {
        return Failure(const ApiError.request(
          message: 'Invalid email format',
          code: 'INVALID_EMAIL',
          statusCode: 400,
        ));
      }

      final user = _mockUsers.firstWhere(
        (u) => u['email'] == email.value,
        orElse: () => {},
      );

      if (user.isEmpty) {
        return Failure(const ApiError.request(
          message: 'User not found',
          code: 'USER_NOT_FOUND',
          statusCode: 404,
        ));
      }

      if (user['password'] != password.value) {
        return Failure(const ApiError.request(
          message: 'Invalid password',
          code: 'INVALID_CREDENTIALS',
          statusCode: 401,
        ));
      }

      _currentUserEmail = email.value;
      _isAuthenticated = true;
      _currentToken = user['token'] as AuthToken;
      return Success(_currentToken!);
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }

  @override
  Future<Result<AuthToken>> signUp({
    required Email email,
    required Password password,
    required String fullName,
  }) async {
    try {
      if (!email.isValid) {
        return Failure(const ApiError.request(
          message: 'Invalid email format',
          code: 'INVALID_EMAIL',
          statusCode: 400,
        ));
      }

      if (!password.isValid) {
        return Failure(const ApiError.request(
          message: 'Invalid password format',
          code: 'INVALID_PASSWORD',
          statusCode: 400,
        ));
      }

      final existingUser = _mockUsers.any((u) => u['email'] == email.value);
      if (existingUser) {
        return Failure(const ApiError.request(
          message: 'Email already registered',
          code: 'EMAIL_EXISTS',
          statusCode: 409,
        ));
      }

      final token = _generateMockToken();
      final newUser = {
        'email': email.value,
        'password': password.value,
        'fullName': fullName,
        'token': token,
      };

      _mockUsers.add(newUser);
      _currentUserEmail = email.value;
      _isAuthenticated = true;
      _currentToken = token;
      return Success(_currentToken!);
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }

  @override
  Future<Result<AuthToken>> refreshToken(String refreshToken) async {
    try {
      if (!_isAuthenticated) {
        return Failure(const ApiError.request(
          message: 'Not authenticated',
          code: 'UNAUTHORIZED',
          statusCode: 401,
        ));
      }

      final user = _mockUsers.firstWhere(
        (u) => u['email'] == _currentUserEmail,
        orElse: () => {},
      );

      if (user.isEmpty) {
        return Failure(const ApiError.request(
          message: 'User not found',
          code: 'USER_NOT_FOUND',
          statusCode: 404,
        ));
      }

      final token = _generateMockToken();
      user['token'] = token;
      _currentToken = token;
      return Success(_currentToken!);
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      _currentUserEmail = null;
      _isAuthenticated = false;
      _currentToken = null;
      return const Success(());
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }

  @override
  Future<Result<bool>> isLoggedIn() async {
    try {
      return Success(_isAuthenticated);
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }

  @override
  Future<Result<void>> forgotPassword(Email email) async {
    try {
      if (!email.isValid) {
        return Failure(const ApiError.request(
          message: 'Invalid email format',
          code: 'INVALID_EMAIL',
          statusCode: 400,
        ));
      }

      final userExists = _mockUsers.any((u) => u['email'] == email.value);
      if (!userExists) {
        return Failure(const ApiError.request(
          message: 'User not found',
          code: 'USER_NOT_FOUND',
          statusCode: 404,
        ));
      }

      // Simulate sending reset email
      return const Success(());
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }

  @override
  Future<Result<void>> resetPassword({
    required String token,
    required Password newPassword,
  }) async {
    try {
      if (!_isAuthenticated) {
        return Failure(const ApiError.request(
          message: 'Not authenticated',
          code: 'UNAUTHORIZED',
          statusCode: 401,
        ));
      }

      final userIndex = _mockUsers.indexWhere(
        (u) => u['email'] == _currentUserEmail,
      );

      if (userIndex == -1) {
        return Failure(const ApiError.request(
          message: 'User not found',
          code: 'USER_NOT_FOUND',
          statusCode: 404,
        ));
      }

      if (!newPassword.isValid) {
        return Failure(const ApiError.request(
          message: 'Invalid password format',
          code: 'INVALID_PASSWORD',
          statusCode: 400,
        ));
      }

      _mockUsers[userIndex]['password'] = newPassword.value;
      return const Success(());
    } catch (e) {
      return Failure(ApiError.request(
        message: e.toString(),
        code: 'UNKNOWN_ERROR',
        statusCode: 500,
      ));
    }
  }
}
