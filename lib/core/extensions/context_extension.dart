import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../i18n/strings.g.dart';
import '../utils/size_manager.dart';

/// extension on context
extension ContextExtension on BuildContext {
  bool get isMobile => DeviceTypeEnum.mobile.isMobile;
  bool get isTablet => DeviceTypeEnum.tablet.isTablet;

  bool get isArabic => LocaleSettings.currentLocale == AppLocale.ar;
  bool get isEnglish => LocaleSettings.currentLocale == AppLocale.en;
  String get languageCode => LocaleSettings.currentLocale.languageCode;

  Color get primaryColor => Theme.of(this).colorScheme.primary;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  String formatDateTime({
    required String date,
    required String format,
  }) =>
      DateFormat(format, languageCode).format(DateTime.parse(date));
}
