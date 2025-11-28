part of 'app_theme.dart';

abstract class TextStyles {
  static const String robotoFont = 'Roboto';

  static TextStyle regular12W400(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(12),
        fontWeight: FontWeight.w400,
        color: context.colorScheme.onSurface,
      );

  static TextStyle regular14W400(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(14),
        fontWeight: FontWeight.w400,
        color: context.colorScheme.onSurface,
      );

  static TextStyle regular16W400(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(16),
        fontWeight: FontWeight.w400,
        color: context.colorScheme.onSurface,
      );

  static TextStyle medium16W500(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(16),
        fontWeight: FontWeight.w500,
        color: context.colorScheme.onSurface,
      );

  static TextStyle medium18W500(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(18),
        fontWeight: FontWeight.w500,
        color: context.colorScheme.onSurface,
      );

  static TextStyle semiBold18W600(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(18),
        fontWeight: FontWeight.w600,
        color: context.colorScheme.onSurface,
      );

  static TextStyle bold16W700(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(16),
        fontWeight: FontWeight.w700,
        color: context.colorScheme.onSurface,
      );

  static TextStyle bold20W700(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(20),
        fontWeight: FontWeight.w700,
        color: context.colorScheme.onSurface,
      );

  static double getResponsiveFontSize(double fontSize) {
    final double scaleFactor = _getScaleFactor();
    final double responsiveSize = fontSize * scaleFactor;
    final double lowerLimit = fontSize * .9; // 90 % of font size
    final double upperLimit = fontSize * 1.5; // 150 % of font size
    final double result = responsiveSize.clamp(lowerLimit, upperLimit);
    return result;
  }

  static double _getScaleFactor() {
    switch (SizeManager.deviceType) {
      case DeviceTypeEnum.mobile:
        return SizeManager.screenWidth / (SizeManager.tabletBreakpoint * 0.65);
      case DeviceTypeEnum.tablet:
        return SizeManager.isPortrait
            ? SizeManager.screenWidth / (SizeManager.desktopBreakpoint * 0.6)
            : SizeManager.screenWidth / (SizeManager.desktopBreakpoint * 0.98);
    }
  }
}
