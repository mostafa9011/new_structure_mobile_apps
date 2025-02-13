import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_structure/config/themes/color_manager.dart';
import 'package:new_structure/config/themes/text_style.dart';

/// Any string value should passed to here
class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle? style;
  final int lines;
  // final TextDirection textDirection;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.color = ColorManager.white,
    this.lines = 99,
    this.style,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr(text),
      style: style ?? getMediumStyle(),
      maxLines: lines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}
