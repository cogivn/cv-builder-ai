import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/config/di.dart';
import '../../../../domain/auth/repositories/auth_repository.dart';

part 'splash_controller.freezed.dart';
part 'splash_controller.g.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.authenticated() = _Authenticated;
  const factory SplashState.unauthenticated() = _Unauthenticated;
  const factory SplashState.error(String message) = _Error;
}

@riverpod
class SplashController extends _$SplashController {
  @override
  SplashState build() => const SplashState.initial();

  Future<void> checkAuthStatus() async {
    state = const SplashState.loading();

    try {
      final authRepository = getIt<AuthRepository>();
      final result = await authRepository.isLoggedIn();

      state = result.fold(
        (isLoggedIn) => isLoggedIn
            ? const SplashState.authenticated()
            : const SplashState.unauthenticated(),
        (failure) => SplashState.error(failure.toString()),
      );
    } catch (e) {
      state = SplashState.error(e.toString());
    }
  }
}
