import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../extensions/context_extension.dart';

class PhoneFieldSuffix extends StatelessWidget {
  final bool isValid;
  const PhoneFieldSuffix({required this.isValid, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: context.isTablet ? 10.w : 10.w,
      ),
      child: Icon(
        isValid ? Icons.check_circle_rounded : Icons.cancel_rounded,
        color:
            isValid ? context.colorScheme.tertiary : context.colorScheme.error,
        size: context.isTablet ? 24.sp : null,
      ),
    );
  }
}
