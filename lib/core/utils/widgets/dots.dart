import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/core/extensions/context_extension.dart';


class Dots extends StatelessWidget {
  final int numberOfDots;
  final int currentIndex;
  const Dots(
      {super.key, required this.numberOfDots, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        numberOfDots,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(
            horizontal: 3.w,
            vertical: 3.h,
          ),
          height: 10.h,
          width: index == currentIndex
              ? (50.w)
              : (context.isTablet ? 30.w : 20.w),
          decoration: BoxDecoration(
            color: index == currentIndex
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}
