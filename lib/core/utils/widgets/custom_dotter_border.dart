import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../extensions/context_extension.dart';

class CustomDottedBorder extends StatelessWidget {
  final Widget child;
  final Color? color;
  const CustomDottedBorder({
    required this.child,
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      padding: EdgeInsets.zero,
      borderType: BorderType.RRect,
      color: color ?? context.colorScheme.surface,
      dashPattern: const [8, 4],
      radius: Radius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: child,
      ),
    );
  }
}
