import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../observers/talker_observer.dart';

@module
abstract class TalkerModule {
  @singleton
  Talker talker() => TalkerFlutter.init(
    observer: const AppTalkerObserver(),
    settings: TalkerSettings(
      useConsoleLogs: kDebugMode,
      colors: {
        TalkerLogType.debug.key: AnsiPen()..green(),
        TalkerLogType.warning.key: AnsiPen()..yellow(bold: true),
        TalkerLogType.error.key: AnsiPen()..red(bold: true)
      },
    ),
  );

}