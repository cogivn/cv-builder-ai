import 'package:auto_route/auto_route.dart';
import 'package:cv_builder_ai/src/core/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/logger.dart';
import '../../providers/auth/auth_notifier.dart';
import '../../router/app_router.dart';
import 'components/auth_header.dart';
import 'components/login_form.dart';

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

    ref.listen(authNotifierProvider, (previous, next) {
      if (next.isAuthenticated) {
        widget.onLoginResult?.call(true);
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AuthHeader(
                    title: context.s.loginWelcomeBack,
                    subtitle: context.s.loginSubtitle,
                  ),
                  LoginForm(
                    formKey: _formKey,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    isLoading: state.isLoading,
                    onSubmit: _onSubmit,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(context.s.loginNoAccount),
                      TextButton(
                        onPressed: () =>
                            context.router.push(const RegisterRoute()),
                        child: Text(
                          context.s.loginSignUpButton,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
