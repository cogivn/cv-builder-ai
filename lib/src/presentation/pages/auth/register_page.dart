import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../core/utils/logger.dart';
import '../../providers/auth/auth_notifier.dart';
import '../../router/app_router.dart';
import 'auth_page.dart';

@RoutePage()
class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final result = await ref.read(authNotifierProvider.notifier).signUp(
            _emailController.text,
            _passwordController.text,
            _nameController.text,
          );

      // if (result.isSuccess()) {
      //   if (mounted) {
      //     // context.router.replaceAll([const HomeRoute()]);
      //   }
      // } else {
      //   if (mounted) {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text(result.getError().toString())),
      //     );
      //   }
      // }
    } catch (e, stack) {
      logger.e('Register failed', error: e, stackTrace: stack);
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthPage(
      title: 'Create an account',
      subtitle: 'Enter your email below to create your account',
      form: Form(
        key: _formKey,
        child: Column(
          children: [
            ShadInputFormField(
              controller: _nameController,
              placeholder: Text('Enter your name'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
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
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            ShadButton(
              onPressed: _isLoading ? null : _onSubmit,
              child: _isLoading
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Sign up'),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () => context.router.push(LoginRoute()),
              child: const Text('Sign in'),
            ),
          ],
        ),
      ],
    );
  }
}
