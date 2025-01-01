import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../router/app_router.dart';
import 'components/onboarding_bottom_bar.dart';
import 'components/onboarding_content.dart';
import 'controllers/onboarding_controller.dart';

@RoutePage()
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  final _pageController = PageController();
  int _currentPage = 0;
  double _currentPageValue = 0;

  @override
  void initState() {
    super.initState();
    _currentPageValue = 0;
    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _handleNext() {
    final items = ref.read(onboardingItemsProvider);
    if (_currentPage < items.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      AutoRouter.of(context).replaceAll([LoginRoute()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final items = ref.watch(onboardingItemsProvider);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: items.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = items[index];
                  double value = 1.0;
                  
                  if (_pageController.position.haveDimensions) {
                    value = index - _currentPageValue;
                    value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
                  }

                  return OnboardingContent(
                    item: item,
                    value: value,
                  );
                },
              ),
            ),
            OnboardingBottomBar(
              pageController: _pageController,
              items: items,
              currentPage: _currentPage,
              onNext: _handleNext,
            ),
          ],
        ),
      ),
    );
  }
}
