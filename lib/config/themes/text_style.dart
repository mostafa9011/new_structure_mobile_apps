import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This the base function and it will be called
/// from all other function in this file
TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  Color? color,
  String? fontFamily,
  double? height,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize.sp,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    height: height,
  );
}

// light style
TextStyle getLightStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 12,
  double? height,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w300,
    height: height,
  );
}

// regular style
TextStyle getRegularStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 14,
  double? height,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    height: height,
  );
}

// medium style
TextStyle getMediumStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 16,
  double? height,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: height,
  );
}

// semi bold style
TextStyle getSemiBoldStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 18,
  double? height,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    height: height,
  );
}

// bold style
TextStyle getBoldStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 18,
  double? height,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: height,
  );
}
