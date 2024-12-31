import 'package:auto_route/auto_route.dart';
import 'package:cv_builder_ai/src/domain/auth/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../app_router.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final AuthRepository _authService;

  AuthGuard(this._authService);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final result = await _authService.isLoggedIn();
    final isLoggedIn = result.fold((r) => r, (_) => false);

    if (isLoggedIn) {
      resolver.next(true);
    } else {
      router.push(LoginRoute(onLoginResult: resolver.next));
    }
  }
}
