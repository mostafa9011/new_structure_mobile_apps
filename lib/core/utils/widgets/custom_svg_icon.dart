import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_structure/config/themes/color_manager.dart';

class CustomSvgIcon extends StatelessWidget {
  final String iconPath;
  final double width;
  final double height;
  final Color color;
  const CustomSvgIcon({
    super.key,
    required this.iconPath,
    this.width = 40,
    this.height = 32,
    this.color = ColorManager.black,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      width: width.w,
      height: height.h,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }
}
