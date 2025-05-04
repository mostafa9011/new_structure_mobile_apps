import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// extension on context
extension ContextExtension on BuildContext {
  // screen size
  Size get size => MediaQuery.of(this).size;

  // is tablet
  bool get isTablet => size.width >= 600 && size.width <= 900;

  // is mobile
  bool get isMobile => size.width < 600;

  // is Arabic
  bool get isArabic => Intl.getCurrentLocale() == "ar";

  // local
  String get locale => Intl.getCurrentLocale();
}
