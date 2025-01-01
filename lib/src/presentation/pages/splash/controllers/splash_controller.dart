import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/services/storage_service.dart';
import '../../auth/controllers/auth_controller.dart';

part 'splash_controller.g.dart';

@riverpod
class SplashController extends _$SplashController {
  @override
  Future<bool> build() async {
    // Add a minimum delay to show splash screen
    await Future.delayed(const Duration(seconds: 2));
    return Storage.getHasSeenOnboarding();
  }

  Future<void> setHasSeenOnboarding() async {
    // await Storage.setHasSeenOnboarding(true);
  }

  void checkAuthStatus() {
    ref.read(authControllerProvider.notifier).checkAuthStatus();
  }
}
