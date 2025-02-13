import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_structure/config/themes/color_manager.dart';

class SpinketLoader extends StatelessWidget {
  const SpinketLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingCircle(
        color: ColorManager.primaryColor,
        size: 50.0.sp,
      ),
    );
  }
}
