import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../core/utils/logger.dart';
import '../../router/app_router.dart';
import '../auth/controllers/auth_controller.dart';
import 'controllers/splash_controller.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      // Add a minimum delay to show splash screen
      await Future.delayed(const Duration(seconds: 2));

      final hasSeenOnboarding = await ref.read(splashControllerProvider.future);

      if (!mounted) return;

      if (!hasSeenOnboarding) {
        await ref.read(splashControllerProvider.notifier).setHasSeenOnboarding();
        if (!mounted) return;
        context.router.replaceAll([const OnboardingRoute()]);
        return;
      }

      // Check authentication state
      ref.read(splashControllerProvider.notifier).checkAuthStatus();

      // Listen to auth state changes
      ref.listen(authControllerProvider, (previous, next) {
        next.whenOrNull(
          authenticated: (_) =>
              context.router.replaceAll([const DashboardRoute()]),
          unauthenticated: () => context.router.replaceAll([LoginRoute()]),
          error: (message) {
            logger.e('Auth error: $message');
            context.router.replaceAll([LoginRoute()]);
          },
        );
      });
    } catch (e, stackTrace) {
      logger.e('Error in splash initialization',
          error: e, stackTrace: stackTrace);
      if (!mounted) return;
      context.router.replaceAll([LoginRoute()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CV.AI',
              style: theme.textTheme.h1.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
