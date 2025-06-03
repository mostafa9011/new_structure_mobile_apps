import 'package:flutter/material.dart';
import 'package:new_structure/config/themes/color_shades.dart';
part 'dark_theme.dart';
part 'light_theme.dart';

class ColorManager {
  // Primary Color Shades
  static const ColorShades _primary = ColorShades(
    shades: {
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(0xFF2196F3), // default shade
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
    defaultShadeIndex: 500,
  );

  // Secondary Color Shades
  static const ColorShades _secondary = ColorShades(
    shades: {
      50: Color(0xFFFCE4EC),
      100: Color(0xFFF8BBD0),
      200: Color(0xFFF48FB1),
      300: Color(0xFFF06292),
      400: Color(0xFFEC407A),
      500: Color(0xFFE91E63),
      600: Color(0xFFD81B60),
      700: Color(0xFFC2185B),
      800: Color(0xFFAD1457),
      900: Color(0xFF880E4F),
    },
    defaultShadeIndex: 500,
  );

  // Grey Color Shades
  static const ColorShades _grey = ColorShades(
    shades: {
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: Color(0xFF9E9E9E),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(0xFF212121),
    },
    defaultShadeIndex: 500,
  );

  // White Color Shades (using Flutter's opacity variants)
  static const ColorShades _white = ColorShades(
    shades: {
      50: Colors.white10,
      100: Colors.white12,
      200: Colors.white30,
      300: Colors.white38,
      400: Colors.white54,
      500: Colors.white,
      600: Colors.white60,
      700: Colors.white70,
    },
    defaultShadeIndex: 500,
  );

  // Black Color Shades (using Flutter's opacity variants)
  static const ColorShades _black = ColorShades(
    shades: {
      50: Colors.black12,
      100: Colors.black26,
      200: Colors.black38,
      300: Colors.black45,
      400: Colors.black54,
      500: Colors.black,
      600: Colors.black87,
    },
    defaultShadeIndex: 500,
  );

  // Error Color Shades (Red)
  static const ColorShades _error = ColorShades(
    shades: {
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFF44336),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
    defaultShadeIndex: 500,
  );

  // Success Color Shades (Green)
  static const ColorShades _success = ColorShades(
    shades: {
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: Color(0xFF4CAF50),
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    },
    defaultShadeIndex: 500,
  );

  // Warning Color Shades (Amber)
  static const ColorShades _warning = ColorShades(
    shades: {
      50: Color(0xFFFFF8E1),
      100: Color(0xFFFFECB3),
      200: Color(0xFFFFE082),
      300: Color(0xFFFFD54F),
      400: Color(0xFFFFCA28),
      500: Color(0xFFFFC107),
      600: Color(0xFFFFB300),
      700: Color(0xFFFFA000),
      800: Color(0xFFFF8F00),
      900: Color(0xFFFF6F00),
    },
    defaultShadeIndex: 500,
  );

  // // Blue Color Shades
  // static const ColorShades _blue = ColorShades(
  //   shades: {
  //     50: Color(0xFFE3F2FD),
  //     100: Color(0xFFBBDEFB),
  //     200: Color(0xFF90CAF9),
  //     300: Color(0xFF64B5F6),
  //     400: Color(0xFF42A5F5),
  //     500: Color(0xFF2196F3),
  //     600: Color(0xFF1E88E5),
  //     700: Color(0xFF1976D2),
  //     800: Color(0xFF1565C0),
  //     900: Color(0xFF0D47A1),
  //   },
  //   defaultShadeIndex: 500,
  // );
}
