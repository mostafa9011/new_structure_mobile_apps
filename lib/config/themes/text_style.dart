import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This the base function and it will be called
/// from all other function in this file
TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  Color? color,
  String? fontFamily,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize.sp,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
  );
}

// light style
TextStyle getLightStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 12,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w300,
  );
}

// regular style
TextStyle getRegularStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 14,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
}

// medium style
TextStyle getMediumStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 16,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );
}

// bold style
TextStyle getBoldStyle({
  Color? color,
  String? fontFamily,
  double fontSize = 18,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );
}
