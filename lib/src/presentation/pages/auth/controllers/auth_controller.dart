import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/config/di.dart';
import '../../../../domain/auth/entities/auth_token.dart';
import '../../../../domain/auth/repositories/auth_repository.dart';
import '../../../../domain/auth/value_objects/email.dart';
import '../../../../domain/auth/value_objects/password.dart';

part 'auth_controller.freezed.dart';
part 'auth_controller.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(AuthToken token) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(String message) = _Error;
}

@riverpod
class AuthController extends _$AuthController {
  late final AuthRepository _authRepository;

  @override
  AuthState build() {
    _authRepository = getIt<AuthRepository>();
    return const AuthState.initial();
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();

    try {
      final emailVO = Email(email);
      final passwordVO = Password(password);

      final result = await _authRepository.signIn(
        email: emailVO,
        password: passwordVO,
      );

      state = result.fold(
        (token) => AuthState.authenticated(token),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String fullName,
  }) async {
    state = const AuthState.loading();

    try {
      final emailVO = Email(email);
      final passwordVO = Password(password);

      final result = await _authRepository.signUp(
        email: emailVO,
        password: passwordVO,
        fullName: fullName,
      );

      state = result.fold(
        (token) => AuthState.authenticated(token),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> signOut() async {
    state = const AuthState.loading();

    try {
      final result = await _authRepository.signOut();

      state = result.fold(
        (_) => const AuthState.unauthenticated(),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> refreshToken(String refreshToken) async {
    state = const AuthState.loading();

    try {
      final result = await _authRepository.refreshToken(refreshToken);

      state = result.fold(
        (token) => AuthState.authenticated(token),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> forgotPassword(String email) async {
    state = const AuthState.loading();

    try {
      final emailVO = Email(email);
      final result = await _authRepository.forgotPassword(emailVO);

      state = result.fold(
        (_) => const AuthState.initial(),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    state = const AuthState.loading();

    try {
      final passwordVO = Password(newPassword);
      final result = await _authRepository.resetPassword(
        token: token,
        newPassword: passwordVO,
      );

      state = result.fold(
        (_) => const AuthState.initial(),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> checkAuthStatus() async {
    state = const AuthState.loading();

    try {
      final result = await _authRepository.isLoggedIn();

      state = result.fold(
        (isLoggedIn) => isLoggedIn
            ? AuthState.authenticated(_authRepository.currentToken!)
            : const AuthState.unauthenticated(),
        (failure) => AuthState.error(failure.toString()),
      );
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }
}
