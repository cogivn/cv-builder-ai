import 'package:cv_builder_ai/src/core/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class LoginForm extends ConsumerStatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  final bool isLoading;
  final VoidCallback onSubmit;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    required this.isLoading,
    required this.onSubmit,
  });

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: AutofillGroup(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _EmailField(
              controller: widget.emailController,
            ),
            _PasswordField(
              controller: widget.passwordController,
              obscurePassword: _obscurePassword,
              onToggleVisibility: _togglePasswordVisibility,
            ),
            const _ForgotPasswordButton(),
            _SubmitButton(
              isLoading: widget.isLoading,
              onSubmit: widget.onSubmit,
            ),
          ],
        ),
      ),
    );
  }
}

class _EmailField extends StatelessWidget {
  final TextEditingController controller;

  const _EmailField({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;
    final radius = BorderRadius.circular(12);

    return ShadInputFormField(
      controller: controller,
      placeholder: Text(
        context.s.loginEmailPlaceholder,
        style: theme.textTheme.p.copyWith(
          color: Colors.white.withValues(alpha: 0.5),
        ),
      ),
      style: theme.textTheme.h3.copyWith(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShadDecoration(
        secondaryBorder: ShadBorder.all(
          padding: const EdgeInsets.all(4),
          width: 0,
        ),
        secondaryFocusedBorder: ShadBorder.all(
          width: 2,
          color: colorScheme.ring,
          radius: radius.add(radius / 2),
          padding: const EdgeInsets.all(2),
        ),
        labelStyle: theme.textTheme.h4.copyWith(
          fontWeight: FontWeight.w500,
          color: colorScheme.foreground,
        ),
        errorStyle: theme.textTheme.small.copyWith(
          fontWeight: FontWeight.w500,
          color: colorScheme.destructive,
        ),
      ),
      suffix: const Padding(
        padding: EdgeInsets.only(right: 12),
        child: Icon(Icons.alternate_email, size: 20, color: Colors.white54),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return context.s.loginEmailRequired;
        }
        return null;
      },
    );
  }
}

class _PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscurePassword;
  final VoidCallback onToggleVisibility;

  const _PasswordField({
    required this.controller,
    required this.obscurePassword,
    required this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;
    final radius = BorderRadius.circular(12);

    return ShadInputFormField(
      controller: controller,
      placeholder: Text(
        context.s.loginPasswordPlaceholder,
        style: theme.textTheme.p.copyWith(
          color: Colors.white.withValues(alpha: 0.5),
        ),
      ),
      style: theme.textTheme.h3.copyWith(color: Colors.white),
      obscureText: obscurePassword,
      autofillHints: const [AutofillHints.password],
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShadDecoration(
        secondaryBorder: ShadBorder.all(
          padding: const EdgeInsets.all(4),
          width: 0,
        ),
        secondaryFocusedBorder: ShadBorder.all(
          width: 2,
          color: colorScheme.ring,
          radius: radius.add(radius / 2),
          padding: const EdgeInsets.all(2),
        ),
        labelStyle: theme.textTheme.h4.copyWith(
          fontWeight: FontWeight.w500,
          color: colorScheme.foreground,
        ),
        errorStyle: theme.textTheme.small.copyWith(
          fontWeight: FontWeight.w500,
          color: colorScheme.destructive,
        ),
      ),
      suffix: IconButton(
        padding: EdgeInsets.zero,
        iconSize: 20.0,
        constraints: const BoxConstraints(),
        style: const ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        icon: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(
            obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
            size: 20,
            color: Colors.white54,
          ),
        ),
        onPressed: onToggleVisibility,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return context.s.loginPasswordRequired;
        }
        return null;
      },
    );
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: null,
        child: Text(context.s.loginForgotPassword),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onSubmit;

  const _SubmitButton({
    required this.isLoading,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return ShadButton(
      onPressed: isLoading ? null : onSubmit,
      child: isLoading
          ? const SizedBox.square(
              dimension: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Text(
              context.s.loginSignInButton,
              style: const TextStyle(fontSize: 16),
            ),
    );
  }
}
