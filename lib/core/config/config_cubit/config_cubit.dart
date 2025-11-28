import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../i18n/strings.g.dart';
import '../../helpers/cache_helper.dart';
import '../../utils/keys_manager.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit() : super(ConfigInitial());

  // theme mode
  static ThemeMode themeMode =
      CacheHelper.getBoolData(KeysManager.isDarkMode) == null ||
              CacheHelper.getBoolData(KeysManager.isDarkMode) == false
          ? ThemeMode.light
          : ThemeMode.dark;

  // toggle theme
  void toggleTheme() {
    themeMode = themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    emit(ThemeToggledState());
    CacheHelper.set(
      key: KeysManager.isDarkMode,
      value: themeMode == ThemeMode.dark,
    );
  }

  // toggle language
  void toggleLanguage() {
    // Determine next locale
    final nextLocale = LocaleSettings.currentLocale == AppLocale.ar
        ? AppLocale.en
        : AppLocale.ar;

    // Update slang locale
    LocaleSettings.setLocale(nextLocale);

    // Save locale code in cache
    CacheHelper.set(
      key: KeysManager.locale,
      value: nextLocale.languageCode, // "ar" أو "en"
    );

    emit(LanguageToggledState());
  }
}
