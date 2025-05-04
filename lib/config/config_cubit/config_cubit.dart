import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/helpers/cache_helper.dart';
import '../../core/utils/keys_manager.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit() : super(ConfigInitial());

  static ConfigCubit of(context) => BlocProvider.of<ConfigCubit>(context);

  // theme mode
  static ThemeMode themeMode =
      CacheHelper.getBoolData(KeysManager.isDarkMode) == null ||
              CacheHelper.getBoolData(KeysManager.isDarkMode) == false
          ? ThemeMode.light
          : ThemeMode.dark;

  // locale
  static Locale? locale =
      Locale(CacheHelper.getStringData(KeysManager.locale) ?? 'en');

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
    locale =
        locale == const Locale('en') ? const Locale('ar') : const Locale('en');
    CacheHelper.set(key: KeysManager.locale, value: locale?.languageCode);
    emit(LanguageToggledState());
  }
}
