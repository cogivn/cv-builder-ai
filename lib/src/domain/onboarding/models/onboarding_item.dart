import 'package:flutter/material.dart';

class OnboardingItem {
  final String image;
  final String title;
  final String description;
  final Color primaryColor;

  const OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
    required this.primaryColor,
  });
}
