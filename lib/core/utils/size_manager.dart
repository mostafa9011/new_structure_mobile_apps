import 'package:flutter/material.dart';

abstract class SizeManager {
  /// If screen width is less than 600 then device is mobile
  static const double tabletBreakpoint = 600;
  static const double desktopBreakpoint = 1000;
  static late double screenWidth, screenHeight;
  static late DeviceTypeEnum deviceType;
  static late bool isPortrait;

  static void updateInfo(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    screenWidth = size.width;
    screenHeight = size.height;
    isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    deviceType = DeviceTypeEnum.fromWidth(screenWidth);
  }

  static T responsiveSize<T>({
    required T tablet,
    required T mobile,
    T? tabletLandscape,
  }) {
    switch (SizeManager.deviceType) {
      case DeviceTypeEnum.mobile:
        return mobile;
      case DeviceTypeEnum.tablet:
        return SizeManager.isPortrait ? tablet : (tabletLandscape ?? tablet);
    }
  }
}

enum DeviceTypeEnum {
  mobile,
  tablet;

  static DeviceTypeEnum fromWidth(double width) {
    if (width <= SizeManager.tabletBreakpoint) return DeviceTypeEnum.mobile;
    // if (width <= SizeConfig.desktopBreakpoint) return DeviceType.tablet;

    return DeviceTypeEnum.tablet;
  }
}

extension DeviceTypeExtension on DeviceTypeEnum {
  bool get isMobile => this == DeviceTypeEnum.mobile;
  bool get isTablet => this == DeviceTypeEnum.tablet;
}