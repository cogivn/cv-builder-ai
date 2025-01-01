import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/di.dart';
import '../../../../domain/onboarding/models/onboarding_item.dart';
import '../../../../domain/onboarding/repositories/onboarding_repository.dart';

final onboardingRepositoryProvider = Provider<OnboardingRepository>(
  (ref) => getIt<OnboardingRepository>(),
);

final onboardingItemsProvider = Provider<List<OnboardingItem>>(
  (ref) => ref.watch(onboardingRepositoryProvider).getOnboardingItems(),
);
