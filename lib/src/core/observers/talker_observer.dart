import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../errors/api_error.dart';

class AppTalkerObserver extends TalkerObserver {

  const AppTalkerObserver();

  @override
  void onError(TalkerError err) {
    if (err.error is Exception) {
      // Handle exception
    } else {
      // Handle other errors
    }
    super.onError(err);
  }

  @override
  void onException(TalkerException err) {
    if (err.exception is ApiError) {
      // Handle API errors
    }
  }

  @override
  void onLog(TalkerData log) {
    
  }

} 