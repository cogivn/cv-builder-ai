import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/onboarding/models/onboarding_item.dart';
import '../../../domain/onboarding/repositories/onboarding_repository.dart';


@Injectable(as: OnboardingRepository)
class OnboardingRepositoryMockup implements OnboardingRepository {
  @override
  List<OnboardingItem> getOnboardingItems() {
    return const [
      OnboardingItem(
        image: 'assets/images/onboarding_1.png',
        title: 'Create Your\nProfessional Resume',
        description:
            'Build a standout resume effortlessly with our intuitive builder and expertly crafted templates.',
        primaryColor: Color(0xFFFFFFFF),
      ),
      OnboardingItem(
        image: 'assets/images/onboarding_2.png',
        title: 'AI-Powered\nResume Analysis',
        description:
            'Get real-time feedback and smart suggestions to optimize your resume with advanced AI technology.',
        primaryColor: Color(0xFFFFFFFF),
      ),
      OnboardingItem(
        image: 'assets/images/onboarding_3.png',
        title: 'Find Your\nDream Job',
        description:
            'Connect with opportunities that perfectly match your skills and career aspirations.',
        primaryColor: Color(0xFFFFFFFF),
      ),
    ];
  }
}
