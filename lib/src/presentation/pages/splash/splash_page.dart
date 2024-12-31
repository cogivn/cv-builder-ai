import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../router/app_router.dart';
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
    Future.microtask(() => ref.read(splashControllerProvider.notifier).checkAuthStatus());
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;

    ref.listen(splashControllerProvider, (previous, next) {
      next.whenOrNull(
        authenticated: () => context.router.replace(const DashboardRoute()),
        unauthenticated: () => context.router.replace(LoginRoute()),
        error: (message) {
          // TODO: Show error message using your preferred method
          debugPrint('Splash error: $message');
          context.router.replace(LoginRoute());
        },
      );
    });

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Add your app logo here
            Icon(
              Icons.description_outlined,
              size: 64,
              color: colorScheme.primary,
            ),
            const SizedBox(height: 24),
            Text(
              'CV Builder AI',
              style: theme.textTheme.h2.copyWith(
                color: colorScheme.foreground,
              ),
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
