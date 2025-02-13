import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/config/themes/color_manager.dart';
import 'package:new_structure/config/themes/text_style.dart';

class RichTextItem extends StatelessWidget {
  final String text1;
  final String text2;
  final String? text3;
  final double fontSize;
  
  const RichTextItem({
    super.key,
    required this.text1,
    required this.text2,
    this.fontSize = 10,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "${context.tr(text1)} ",
            style: getBoldStyle(
              color: ColorManager.black,
              fontSize: fontSize.sp,
            ),
          ),
          TextSpan(
            text: "$text2 ",
            style: getBoldStyle(
              color: ColorManager.primaryColor,
              fontSize: fontSize.sp,
            ),
          ),
          if (text3 != null)
            TextSpan(
              text: "${context.tr(text3!)} ",
              style: getBoldStyle(
                color: ColorManager.black,
                fontSize: fontSize.sp,
              ),
            ),
        ],
      ),
    );
  }
}
