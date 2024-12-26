import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // Check if user is authenticated
    //final isAuthenticated = false;
    //if (isAuthenticated) {
    //  resolver.next(true);
    //} else {
    // router.push(
    //   LoginRoute(
    //     onLoginResult: (success) {
    //       resolver.next(success);
    //     },
    //   ),
    // );
  }
}
