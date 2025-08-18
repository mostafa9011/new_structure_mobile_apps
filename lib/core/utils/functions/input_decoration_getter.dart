import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/app_theme.dart';
import '../../extensions/context_extension.dart';

mixin InputDecorationGetter {
  InputDecoration getInputDecoration({
    required BuildContext context,
    String? labelText,
    String? hintText,
    bool enabled = true,
    Widget? suffixWidget,
    Widget? prefixIcon,
    TextStyle? labelStyle,
    double borderRadius = 5,
    double verticalPadding = 16,
    double horizontalPadding = 16,
    double prefixIconEndPadding = 10,
    Color? borderColor,
    bool enableLableTextWidget = true,
  }) {
    return InputDecoration(
      focusColor: context.colorScheme.primary,
      hoverColor: context.colorScheme.primary,
      errorStyle: TextStyles.regular14W400(context).copyWith(
        color: context.colorScheme.error,
      ),
      prefixIcon: prefixIcon == null
          ? null
          : Padding(
              padding: EdgeInsetsDirectional.only(
                start: horizontalPadding.w,
                end: prefixIconEndPadding.w,
                top: verticalPadding.h,
                bottom: verticalPadding.h,
              ),
              child: prefixIcon,
            ),
      prefixIconConstraints: BoxConstraints(
        maxHeight: 70.h,
        maxWidth: 140.w,
      ),
      suffixIconConstraints: BoxConstraints(
        maxHeight: 70.h,
        maxWidth: 140.w,
      ),
      prefixIconColor: context.colorScheme.onSecondary,
      suffixIconColor: context.colorScheme.onSecondary,
      suffixIcon: suffixWidget == null
          ? null
          : Padding(
              padding: EdgeInsetsDirectional.only(end: horizontalPadding.w),
              child: suffixWidget,
            ),
      hintText: hintText ?? labelText ?? '',
      labelText: enableLableTextWidget ? null : labelText,
      labelStyle: TextStyles.medium16W500(context).copyWith(
        color: context.colorScheme.primary,
      ),
      hintStyle: TextStyles.regular14W400(context).copyWith(
        fontSize: 13,
        color: context.colorScheme.onSecondary,
      ),
      contentPadding: EdgeInsetsDirectional.symmetric(
        vertical: context.isMobile ? verticalPadding.h : 25.h,
        horizontal: horizontalPadding.w,
      ),
      fillColor: context.colorScheme.surface,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide:
            BorderSide(width: 1.w, color: context.colorScheme.onSecondary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: BorderSide(
          width: 1.w,
          color: borderColor ?? context.colorScheme.primary,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: BorderSide(
          width: 1.w,
          color: borderColor ?? context.colorScheme.onSecondary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: BorderSide(
          width: 1.w,
          color: context.colorScheme.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: BorderSide(
          width: 1.w,
          color: context.colorScheme.error,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: BorderSide(
          width: 1.w,
          color: context.colorScheme.primary,
        ),
      ),
    );
  }
}
