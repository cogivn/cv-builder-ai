import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignInCard extends StatelessWidget {
  const SignInCard({
    super.key,
    this.onSignInPressed,
  });

  final VoidCallback? onSignInPressed;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign in to your free account',
            style: theme.textTheme.h4.copyWith(
              color: theme.colorScheme.primaryForeground,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Your guest account will be deleted when the time is up. Sign in to save and download your resume',
            style: theme.textTheme.small.copyWith(
              color: theme.colorScheme.primaryForeground.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ShadButton.ghost(
                  backgroundColor: theme.colorScheme.primaryForeground,
                  foregroundColor: theme.colorScheme.primary,
                  onPressed: onSignInPressed,
                  child: const Text('Sign In Now'),
                ),
              ),
              const SizedBox(width: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryForeground.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '67:12:45',
                  style: theme.textTheme.small.copyWith(
                    color: theme.colorScheme.primaryForeground,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
