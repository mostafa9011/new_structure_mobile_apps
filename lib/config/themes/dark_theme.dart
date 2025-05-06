part of 'color_manager.dart';

ThemeData get darkTheme {
  // change colors as you want...
  return ThemeData.dark().copyWith(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ColorManager._primary.defaultShade,
      onPrimary: ColorManager._white.defaultShade,
      secondary: ColorManager._secondary.defaultShade,
      // grey
      onSecondary: ColorManager._grey.defaultShade,
      surface: ColorManager._black.defaultShade,
      onSurface: ColorManager._white.defaultShade,
      tertiary: ColorManager._success.defaultShade,
      error: ColorManager._error.defaultShade,
      onTertiary: ColorManager._warning.defaultShade,
      onError: ColorManager._white.defaultShade,
    ),
  );
}
