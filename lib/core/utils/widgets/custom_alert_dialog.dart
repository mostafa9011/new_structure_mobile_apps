import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/config/themes/text_style.dart';

void showCustomAlertDialog({
  required BuildContext context,
  required String title,
  required Widget content,
  double? horizontalPadding,
  double? verticalPadding,
  double? intensHorizontalPadding,
}) {
  showDialog(
    builder: (context) {
      return AlertDialog(
        insetPadding: EdgeInsets.symmetric(
          horizontal: intensHorizontalPadding?.w ?? 12.w,
        ),
        surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Center(
          child: Text(
            title,
            style: getBoldStyle(fontSize: 20),
          ),
        ),
        content: SingleChildScrollView(child: content),
        contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 10.w,
          vertical: verticalPadding?.h ?? 20.h,
        ),
      );
    },
    context: context,
  );
}
