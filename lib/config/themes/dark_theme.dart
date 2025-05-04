part of 'color_manager.dart';

ThemeData get darkTheme {
  // change colors as you want...
  return ThemeData.dark().copyWith(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ColorManager._primary.defaultShade,
      onPrimary: ColorManager._black.defaultShade,
      secondary: ColorManager._secondary.defaultShade,
      onSecondary: ColorManager._white.defaultShade,
      surface: ColorManager._black.defaultShade,
      onSurface: ColorManager._white.defaultShade,
      error: ColorManager._error.defaultShade,
      onError: ColorManager._white.defaultShade,
    ),
  );
}
