import 'package:cv_builder_ai/src/core/errors/api_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/config/di.dart';
import '../../../domain/auth/repositories/auth_repository.dart';
import '../../../domain/auth/value_objects/password.dart';
import '../../../domain/user/value_objects/email.dart';
import 'auth_state.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  late final AuthRepository _repository;

  @override
  AuthState build() {
    _repository = getIt<AuthRepository>();
    return const AuthState();
  }

  Future<void> signIn(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);

    final emailObj = Email.create(email);
    if (emailObj == null) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(message: 'Invalid email format'),
      );
      return;
    }

    final passwordObj = Password.create(password);
    if (passwordObj == null) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(
          message: 'Password must be at least 6 characters',
        ),
      );
      return;
    }

    try {
      final result = await _repository.signIn(
        email: emailObj,
        password: passwordObj,
      );

      state = result.fold(
        (token) => state.copyWith(
          isLoading: false,
          isAuthenticated: true,
          token: token,
        ),
        (error) => state.copyWith(
          isLoading: false,
          error: error,
        ),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(message: e.toString()),
      );
    }
  }

  Future<void> signUp(String email, String password, String name) async {
    state = state.copyWith(isLoading: true, error: null);

    final emailObj = Email.create(email);
    if (emailObj == null) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(message: 'Invalid email format'),
      );
      return;
    }

    final passwordObj = Password.create(password);
    if (passwordObj == null) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(
          message: 'Password must be at least 6 characters',
        ),
      );
      return;
    }

    try {
      final result = await _repository.signUp(
        email: emailObj,
        password: passwordObj,
        fullName: name,
      );

      state = result.fold(
        (token) => state.copyWith(
          isLoading: false,
          isAuthenticated: true,
          token: token,
        ),
        (error) => state.copyWith(
          isLoading: false,
          error: error,
        ),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(message: e.toString()),
      );
    }
  }

  Future<void> signOut() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final result = await _repository.signOut();

      state = result.fold(
        (_) => const AuthState(),
        (error) => state.copyWith(
          isLoading: false,
          error: error,
        ),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ApiError.request(message: e.toString()),
      );
    }
  }
}
