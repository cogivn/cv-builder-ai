import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../domain/onboarding/models/onboarding_item.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingItem item;
  final double value;

  const OnboardingContent({
    super.key,
    required this.item,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: value,
              child: Transform.scale(
                scale: 0.8 + (value * 0.2),
                child: Image.asset(
                  item.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 48),
          Expanded(
            flex: 2,
            child: Transform.translate(
              offset: Offset(0, 30 * (1 - value)),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: value,
                child: Column(
                  children: [
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.h2.copyWith(
                        color: theme.colorScheme.foreground,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      item.description,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.large.copyWith(
                        color: theme.colorScheme.foreground.withValues(alpha: 0.7),
                        height: 1.5,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
