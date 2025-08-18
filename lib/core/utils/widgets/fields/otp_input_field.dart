import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../config/routes/route_manager.dart';
import '../../../../config/themes/app_theme.dart';
import '../../../extensions/context_extension.dart';

class OtpInputField extends StatelessWidget {
  final TextEditingController otpController;
  final void Function(String)? onChanged;
  const OtpInputField({required this.otpController, super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      cursor: Text(
        '|',
        style: TextStyles.regular16W400(context).copyWith(
          color: context.colorScheme.onSurface,
        ),
      ),
      onChanged: onChanged,
      controller: otpController,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      focusedPinTheme: focusedPinTheme,
      defaultPinTheme: defaultPinTheme,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.tr.fieldRequired;
        }
        return null;
      },
    );
  }

  PinTheme get defaultPinTheme {
    final context = RouteManager.navigatorKey.currentContext!;
    return PinTheme(
      textStyle: TextStyles.medium16W500(context).copyWith(
        color: context.colorScheme.onSurface,
      ),
      width: 60.w,
      height: 60.w,
      decoration: BoxDecoration(
        // color: context.colorScheme.secondary,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: context.colorScheme.secondary,
          width: 1.w,
        ),
      ),
    );
  }

  PinTheme get focusedPinTheme {
    final context = RouteManager.navigatorKey.currentContext!;
    return defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: context.colorScheme.secondary,
        width: 2.w,
      ),
    );
  }
}
