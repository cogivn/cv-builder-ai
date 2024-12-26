import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AppTheme {
  static ShadThemeData get darkTheme => ShadThemeData(
        colorScheme: ShadSlateColorScheme.dark(),
        brightness: Brightness.dark,
      );

  static ShadThemeData get lightTheme => ShadThemeData(
        colorScheme: ShadSlateColorScheme.light(),
        brightness: Brightness.light,
      );
} 