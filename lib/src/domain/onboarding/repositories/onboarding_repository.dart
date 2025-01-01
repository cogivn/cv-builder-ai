import 'package:injectable/injectable.dart';

import '../models/onboarding_item.dart';

abstract class OnboardingRepository {
  List<OnboardingItem> getOnboardingItems();
}
