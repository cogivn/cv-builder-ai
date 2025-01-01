import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../domain/onboarding/models/onboarding_item.dart';
import '../../../router/app_router.dart';

class OnboardingBottomBar extends StatelessWidget {
  final PageController pageController;
  final List<OnboardingItem> items;
  final int currentPage;
  final VoidCallback onNext;

  const OnboardingBottomBar({
    super.key,
    required this.pageController,
    required this.items,
    required this.currentPage,
    required this.onNext,
  });

  void _navigateToLogin(BuildContext context) {
    AutoRouter.of(context).replaceAll([LoginRoute()]);
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.border.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: items.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: items[currentPage].primaryColor,
                  dotColor: items[currentPage].primaryColor.withValues(alpha: 0.2),
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 6,
                  expansionFactor: 3,
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ShadButton(
                  backgroundColor: items[currentPage].primaryColor,
                  onPressed: onNext,
                  child: Text(
                    currentPage < items.length - 1 ? 'Continue' : 'Get Started',
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                switchInCurve: Curves.easeInOut,
                switchOutCurve: Curves.easeInOut,
                transitionBuilder: (child, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    axisAlignment: -1,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  );
                },
                child: currentPage < items.length - 1
                    ? Padding(
                        key: const ValueKey('skip_button'),
                        padding: const EdgeInsets.only(top: 16),
                        child: SizedBox(
                          width: double.infinity,
                          child: ShadButton.ghost(
                            onPressed: () => _navigateToLogin(context),
                            child: const Text('Skip'),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(key: ValueKey('empty')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
