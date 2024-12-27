import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';
import 'environment.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies({required String flavor}) =>
    getIt.init(environment: flavor);

abstract class DI {
  static Future<void> setup({String? flavor}) async => configureDependencies(
        flavor: flavor ?? Env.flavor,
      );
}
