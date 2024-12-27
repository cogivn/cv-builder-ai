import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../core/utils/logger.dart';
import '../../providers/auth/auth_notifier.dart';
import '../../router/app_router.dart';
import 'auth_page.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  final void Function(bool success)? onLoginResult;

  const LoginPage({super.key, this.onLoginResult});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      await ref.read(authNotifierProvider.notifier).signIn(
            _emailController.text,
            _passwordController.text,
          );
    } catch (e, stack) {
      logger.e('Login failed', error: e, stackTrace: stack);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);

    // Listen to auth state changes
    ref.listen(authNotifierProvider, (previous, next) {
      // if (next.error != null) {
      //   String errorMessage = next.error.toString();
      //   if (next.error is ApiError) {
      //     errorMessage = next.error.as<ApiError>().getErrorMessage(context);
      //   }
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text(errorMessage)),
      //   );
      // }

      if (next.isAuthenticated) {
        widget.onLoginResult?.call(true);
        //TODO context.router.replaceAll([const HomeRoute()]);
      }
    });

    return AuthPage(
      title: 'Welcome back',
      subtitle: 'Enter your email to sign in to your account',
      form: Form(
        key: _formKey,
        child: Column(
          children: [
            ShadInputFormField(
              controller: _emailController,
              placeholder: Text('Enter your email'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              controller: _passwordController,
              placeholder: Text('Enter your password'),
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            ShadButton(
              onPressed: state.isLoading ? null : _onSubmit,
              child: state.isLoading
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Sign in'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          // TODO onPressed: () => context.router.push(const ForgotPasswordRoute()),
          onPressed: null,
          child: const Text('Forgot password?'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            TextButton(
              onPressed: () => context.router.push(const RegisterRoute()),
              child: const Text('Sign up'),
            ),
          ],
        ),
      ],
    );
  }
} 