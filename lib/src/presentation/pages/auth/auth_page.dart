import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AuthPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget form;
  final List<Widget>? actions;

  const AuthPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.form,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: ShadCard(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    form,
                    if (actions != null) ...[
                      const SizedBox(height: 16),
                      ...actions!,
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
} 