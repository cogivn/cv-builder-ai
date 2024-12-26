import 'package:cv_builder_ai/src/core/config/di.config.dart';
import 'package:cv_builder_ai/src/core/config/environment.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies({required String flavor}) =>
    getIt.init(environment: flavor);

abstract class DI {
  static Future<void> setup({String? flavor}) async => configureDependencies(
        flavor: flavor ?? Env.flavor,
      );
}
