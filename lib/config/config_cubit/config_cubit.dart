import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/helpers/cache_helper.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  bool isDarkMode = false;

  ConfigCubit() : super(ConfigInitial()) {
    // isDarkMode = CacheHelper.getDataBool(key: Keys.isDarkMode) ?? false;
  }

  static ConfigCubit of(context) => BlocProvider.of<ConfigCubit>(context);

  // void setDarkMode(bool value) {
  //   // If the value is the same as the current value, do nothing
  //   if ((value && isDarkMode) || (value == false && !isDarkMode)) return;

  //   isDarkMode = value;
  //   CacheHelper.put(key: Keys.isDarkMode, value: isDarkMode);
  //   emit(DarkModeChangedState());
  // }

  ////
  // static const String _darkThemKey = 'themeMode';

  static ThemeMode themeMode = CacheHelper.getBoolData(_darkThemKey) == null
      ? ThemeMode.dark
      : CacheHelper.getBoolData(_darkThemKey)!
          ? ThemeMode.dark
          : ThemeMode.light;

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    emit(ThemeCubitToggled());
    CacheHelper.set(
      key: _darkThemKey,
      value: themeMode == ThemeMode.dark,
    );
  }
}
