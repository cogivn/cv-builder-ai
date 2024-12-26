import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppLifecycle with WidgetsBindingObserver {
  AppLifecycle() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        onResumed();
        break;
      case AppLifecycleState.inactive:
        onInactive();
        break;
      case AppLifecycleState.paused:
        onPaused();
        break;
      case AppLifecycleState.detached:
        onDetached();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  void onResumed() {}
  void onInactive() {}
  void onPaused() {}
  void onDetached() {}

  @disposeMethod
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }
} 