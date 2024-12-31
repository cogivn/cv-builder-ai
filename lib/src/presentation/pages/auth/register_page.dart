import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/l10n/messages.dart';
import '../../../core/utils/logger.dart';
import '../../router/app_router.dart';
import 'components/auth_header.dart';
import 'components/register_form.dart';
import 'controllers/auth_controller.dart';

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
      await ref.read(authControllerProvider.notifier).signUp(
            email: _emailController.text,
            password: _passwordController.text,
            fullName: _nameController.text,
          );
    } catch (e, stack) {
      logger.e('Register failed', error: e, stackTrace: stack);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authControllerProvider);

    ref.listen(authControllerProvider, (previous, next) {
      next.whenOrNull(
        authenticated: (token) => widget.onRegisterResult?.call(true),
        error: (message) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        ),
      );
    });

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AuthHeader(
                    title: context.s.registerCreateAccount,
                    subtitle: context.s.registerSubtitle,
                  ),
                  const SizedBox(height: 32),
                  RegisterForm(
                    formKey: _formKey,
                    nameController: _nameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    isLoading: state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    ),
                    onSubmit: _onSubmit,
                  ),
                  const SizedBox(height: 32),
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
