import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../extensions/context_extension.dart';
import '../../custom_svg_picture.dart';

class DefaultPrefixIcon extends StatelessWidget {
  const DefaultPrefixIcon({
    required this.enabled,
    required this.prefixIconPath,
    this.prefixIcon,
    this.bottomLeftRadius = 24.0,
    super.key,
  });

  final bool enabled;
  final String? prefixIconPath;
  final Widget? prefixIcon;
  final double bottomLeftRadius;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (prefixIconPath != null) ...{
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            width: 60.w,
            height: double.infinity,
            decoration: BoxDecoration(
              color: enabled
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bottomLeftRadius.r),
                topLeft: Radius.circular(24.r),
              ),
            ),
            child: CustomSvgPicture.asset(
              assetName: prefixIconPath!,
              color: context.colorScheme.surface,
            ),
          ),
        },
        if (prefixIcon != null) ...[
          SizedBox(width: 10.w),
          prefixIcon!,
        ],
      ],
    );
  }
}
