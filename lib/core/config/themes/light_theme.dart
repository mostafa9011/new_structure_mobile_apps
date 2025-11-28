part of 'color_manager.dart';

ThemeData get lightTheme {
  // change colors as you want...
  return ThemeData.light().copyWith(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ColorManager._primary.defaultShade,
      onPrimary: ColorManager._black.defaultShade,
      secondary: ColorManager._secondary.defaultShade,
      // grey
      onSecondary: ColorManager._grey.defaultShade,
      surface: ColorManager._white.defaultShade,
      onSurface: ColorManager._black.defaultShade,
      tertiary: ColorManager._success.defaultShade,
      onTertiary: ColorManager._warning.defaultShade,
      error: ColorManager._error.defaultShade,
      onError: ColorManager._white.defaultShade,
    ),
  );
}
