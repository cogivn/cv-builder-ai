import 'package:flutter_config/flutter_config.dart';
import 'package:injectable/injectable.dart';

const alpha = Environment(Env.alpha);

abstract class Env {
  static setup() async {
    await FlutterConfig.loadEnvVariables();
  }

  static final flavor = FlutterConfig.get('FLAVOR');
  static final packageName = FlutterConfig.get('PACKAGE_NAME');
  static final bundleId = FlutterConfig.get('BUNDLE_ID');
  static final apiUrl = FlutterConfig.get('API_URL');
  static final appName = FlutterConfig.get('APP_NAME');

  static const alpha = 'alpha';
  static const dev = 'dev';
  static const prod = 'prod';

  static const environments = [dev, prod];

  static bool isRunOnDevelopmentMode() {
    return [alpha, dev].contains(flavor);
  }
}
