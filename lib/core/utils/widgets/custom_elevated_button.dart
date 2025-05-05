import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/config/themes/text_style.dart';
import 'package:new_structure/core/extensions/context_extension.dart';
import 'package:new_structure/core/utils/widgets/spinket_loader.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final TextStyle? style;
  final String text;
  final double size;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double borderRadius;
  final double width;
  final double height;
  final bool shadow;
  final bool isDisabled;
  final bool isLoading;
  final AlignmentGeometry buttonAlignment;

  // ColorScheme colorTheme = Theme.of(RouteManager.currentContext).colorScheme;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.style,
    this.buttonAlignment = Alignment.center,
    this.width = 1,
    this.shadow = false,
    this.height = 60,
    this.borderRadius = 16,
    this.borderColor,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.size = 16,
    this.isDisabled = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SpinketLoader();
    }

    return SizedBox(
      height: context.isTablet ? 65.h : height.h,
      width: width == 1 ? width.sw : width.w,
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: WidgetStateProperty.all<Color>(
                isDisabled
                    ? Theme.of(context).colorScheme.onSecondary
                    : backgroundColor ?? context.primaryColor,
              ),
              side: WidgetStatePropertyAll(
                BorderSide(
                  color: Colors.transparent,
                  width: 1.5.sp,
                ),
              ),
            ),
        onPressed: isDisabled ? null : onPressed,
        child: Text(
           text,
          style: style ??
              getBoldStyle(
                fontSize: context.isTablet ? 8.sp : size.sp,
                color: textColor,
              ),
        ),
      ),
    );
  }
}
