import 'package:cv_builder_ai/src/core/config/di.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

final logger = _Logger(getIt<Talker>());

class _Logger {
  final Talker _talker;

  _Logger(this._talker);

  Talker get talker => _talker;

  void d(String message) {
    if (kDebugMode) {
      _talker.debug('💡 $message');
    }
  }

  void i(String message) {
    if (kDebugMode) {
      _talker.info('ℹ️ $message');
    }
  }

  void w(String message) {
    if (kDebugMode) {
      _talker.warning('⚠️ $message');
    }
  }

  void e(Object message, {dynamic error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      _talker.error('❌ $message', error, stackTrace);
    }
  }
}
