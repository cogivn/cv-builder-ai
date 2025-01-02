import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class FeatureCarousel extends StatefulWidget {
  const FeatureCarousel({super.key});

  @override
  State<FeatureCarousel> createState() => _FeatureCarouselState();
}

class _FeatureCarouselState extends State<FeatureCarousel> {
  final PageController _pageController = PageController(viewportFraction: 0.93);
  int _currentPage = 0;
  Timer? _timer;

  final List<CarouselItem> _items = [
    CarouselItem(
      title: 'AI-Powered Resume Builder',
      description: 'Create professional resumes with the help of artificial intelligence',
      icon: Icons.auto_awesome,
      color: const Color(0xFF6366F1),
    ),
    CarouselItem(
      title: 'Multiple Templates',
      description: 'Choose from a variety of modern and professional templates',
      icon: Icons.style,
      color: const Color(0xFF8B5CF6),
    ),
    CarouselItem(
      title: 'Easy Export',
      description: 'Export your resume in multiple formats with one click',
      icon: Icons.file_download,
      color: const Color(0xFFEC4899),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index % _items.length;
              });
            },
            itemCount: null, // Makes it infinite
            itemBuilder: (context, index) {
              final item = _items[index % _items.length];
              return AnimatedScale(
                scale: _currentPage == (index % _items.length) ? 1.0 : 0.9,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        item.color.withOpacity(0.8),
                        item.color.withOpacity(0.6),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          item.icon,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        item.title,
                        style: theme.textTheme.h4.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.description,
                        style: theme.textTheme.small.copyWith(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _items.length,
            (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? colorScheme.primary
                    : colorScheme.muted,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CarouselItem {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  CarouselItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}