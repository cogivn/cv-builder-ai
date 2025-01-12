import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../pages/auth/login_page.dart';
import '../pages/auth/register_page.dart';
import '../pages/cv/cv_list_page.dart';
import '../pages/dashboard/dashboard_page.dart';
import '../pages/import_resume/import_resume_page.dart';
import '../pages/onboarding/onboarding_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/template/browse_templates_page.dart';
import 'guards/auth_guard.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final AuthGuard _authGuard;

  AppRouter(this._authGuard);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: DashboardRoute.page, guards: [_authGuard]),
        AutoRoute(page: CVListRoute.page, guards: [_authGuard]),
        AutoRoute(page: ImportResumeRoute.page, guards: [_authGuard]),
        AutoRoute(page: BrowseTemplatesRoute.page, guards: [_authGuard]),
      ];
}
