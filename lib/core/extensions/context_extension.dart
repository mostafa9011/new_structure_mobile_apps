import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import '../utils/size_manager.dart';


/// extension on context
extension ContextExtension on BuildContext {
  bool get isMobile => DeviceTypeEnum.mobile.isMobile;
  bool get isTablet => DeviceTypeEnum.tablet.isTablet;

  bool get isArabic => AppLocalizations.of(this)?.localeName == 'ar';
  bool get isEnglish => AppLocalizations.of(this)?.localeName == 'en';
  String get languageCode => AppLocalizations.of(this)?.localeName ?? 'en';

  Color get primaryColor => Theme.of(this).colorScheme.primary;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  AppLocalizations get tr => AppLocalizations.of(this)!;

  String formatDateTime({
    required String date,
    required String format,
  }) =>
      DateFormat(format, languageCode).format(DateTime.parse(date));
}
