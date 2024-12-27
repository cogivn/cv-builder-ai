import 'package:result_dart/result_dart.dart';

import '../entities/auth_token.dart';
import '../value_objects/password.dart';
import '../../user/value_objects/email.dart';

abstract class AuthRepository {
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
  
  Future<Result<void>> forgotPassword(Email email);
  
  Future<Result<void>> resetPassword({
    required String token,
    required Password newPassword,
  });

  Future<Result<bool>> isAuthenticated();
} 