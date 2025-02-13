import 'package:flutter/material.dart';

import 'color_manager.dart';

abstract class AppTheme {
  // static const double borderRadius = 20;
  // static const double radius = 25;
  // static const double iconSize = 24;
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorManager.white,
    primaryColor: ColorManager.primaryColor,
  );

  static final dark = ThemeData.dark().copyWith(
    // scaffoldBackgroundColor: ColorManager.black,
    primaryColor: ColorManager.primaryColor,
  );
}
