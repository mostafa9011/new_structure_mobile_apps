library app_theme;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/extensions/context_extension.dart';
import '../../core/utils/size_manager.dart';

part 'text_styles.dart';

// ignore: unused_element
double _iconSize(BuildContext context) {
  return SizeManager.responsiveSize<double>(
    mobile: 24.sp,
    tablet: 16.sp,
    tabletLandscape: 10.sp,
  );
}
