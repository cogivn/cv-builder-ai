import 'package:auto_route/auto_route.dart';
import 'package:cv_builder_ai/src/core/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/logger.dart';
import '../../providers/auth/auth_notifier.dart';
import '../../router/app_router.dart';
import 'components/auth_header.dart';
import 'components/register_form.dart';

@RoutePage()
class RegisterPage extends ConsumerStatefulWidget {
  final void Function(bool success)? onRegisterResult;

  const RegisterPage({super.key, this.onRegisterResult});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      await ref.read(authNotifierProvider.notifier).signUp(
            _emailController.text,
            _passwordController.text,
            _nameController.text,
          );
    } catch (e, stack) {
      logger.e('Register failed', error: e, stackTrace: stack);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authNotifierProvider);

    ref.listen(authNotifierProvider, (previous, next) {
      if (next.isAuthenticated) {
        widget.onRegisterResult?.call(true);
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
                    title: context.s.registerCreateAccount,
                    subtitle: context.s.registerSubtitle,
                  ),
                  RegisterForm(
                    formKey: _formKey,
                    nameController: _nameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    isLoading: state.isLoading,
                    onSubmit: _onSubmit,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(context.s.registerHaveAccount),
                      TextButton(
                        onPressed: () => context.router.replace(LoginRoute()),
                        child: Text(
                          context.s.registerSignInButton,
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
