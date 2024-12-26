import 'package:cv_builder_ai/src/core/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'src/core/config/di.dart';
import 'src/core/config/environment.dart';
import 'src/core/errors/error_handler.dart';
import 'src/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Env.setup();
  await DI.setup();
  await Storage.setup();

  // Initialize error handling
  AppErrorHandler.initialize(getIt<Talker>());

  runApp(const App());
}
