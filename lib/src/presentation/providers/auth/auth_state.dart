import 'package:cv_builder_ai/src/core/errors/api_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/auth/entities/auth_token.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isAuthenticated,
    AuthToken? token,
    Exception? error,
  }) = _AuthState;
} 