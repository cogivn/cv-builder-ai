import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../utils/logger.dart';

class AppErrorHandler {
  static void initialize(Talker talker) {
    // Handle Flutter errors
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      logger.e(
        'Flutter Error',
        error: details.exception,
        stackTrace: details.stack,
      );
    };

    // Handle Platform errors
    PlatformDispatcher.instance.onError = (error, stack) {
      logger.e(
        'Platform Error',
        error: error,
        stackTrace: stack,
      );
      return true;
    };

    // Handle Zone errors
    runZonedGuarded(
      () async {
        ErrorWidget.builder = (FlutterErrorDetails details) {
          logger.e(
            'Widget Error',
            error: details.exception,
            stackTrace: details.stack,
          );

          return Material(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                kDebugMode
                    ? details.exception.toString()
                    : 'Something went wrong',
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          );
        };
      },
      (error, stackTrace) {
        talker.handle(error, stackTrace);
      },
    );
  }
}
