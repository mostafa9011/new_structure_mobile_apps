import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_structure/config/themes/color_manager.dart';
import 'package:new_structure/config/themes/text_style.dart';

class CustomRowSpanText extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomRowSpanText(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: context.tr(text1),
          style: getRegularStyle(
            fontSize: 15,
            color: ColorManager.primaryColor,
          ),
          children: [
            TextSpan(
              text: context.tr(text2),
              style: getMediumStyle(
                color: ColorManager.primaryColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
