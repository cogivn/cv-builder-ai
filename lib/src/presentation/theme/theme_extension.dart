import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// extension ThemeExtension on ShadTheme {
//   ColorScheme get extendedColorScheme => colorScheme.copyWith(
//         success: const Color(0xFF22C55E), // Green
//         error: const Color(0xFFEF4444),   // Red
//         warning: const Color(0xFFF59E0B), // Amber
//         info: const Color(0xFF3B82F6),    // Blue
//       );
// }

extension ColorSchemeExtension on ShadColorScheme {
  Color get success => const Color(0xFF22C55E);
  Color get error => const Color(0xFFEF4444);
  Color get warning => const Color(0xFFF59E0B);
  Color get info => const Color(0xFF3B82F6);
}
