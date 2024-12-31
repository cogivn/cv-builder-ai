import 'package:result_dart/result_dart.dart';

import '../entities/auth_token.dart';
import '../value_objects/email.dart';
import '../value_objects/password.dart';

abstract class AuthRepository {
  AuthToken? get currentToken;

  Future<Result<AuthToken>> signIn({
    required Email email,
    required Password password,
  });

  Future<Result<AuthToken>> signUp({
    required Email email,
    required Password password,
    required String fullName,
  });

  Future<Result<AuthToken>> refreshToken(String refreshToken);
  
  Future<Result<void>> signOut();
  
  Future<Result<bool>> isLoggedIn();
  
  Future<Result<void>> forgotPassword(Email email);

  Future<Result<void>> resetPassword({
    required String token,
    required Password newPassword,
  });
}