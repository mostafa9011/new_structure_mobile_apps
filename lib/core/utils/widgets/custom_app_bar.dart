import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isEmpty;
  final Widget? leadingWidget;
  final Widget? titleWidget;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    this.isEmpty = false,
    this.leadingWidget,
    this.titleWidget,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? AppBar(
            leading: const SizedBox(),
            toolbarHeight: 10.h,
          )
        : AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,

            leadingWidth: 70.w,
            leading: Padding(
              padding: EdgeInsetsDirectional.only(start: 15.w),
              child: leadingWidget,
            ),

            title: titleWidget,

            // trailing is circle avatar with notification icon
            // with stacked circle avatar containing number of notifications
            actions: actions,

            // make a gradient color for the app bar
            // flexibleSpace: Container(
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).scaffoldBackgroundColor,
            //     gradient: LinearGradient(
            //       colors: [
            //         ColorManager.primary.withOpacity(0.7),
            //         Theme.of(context).scaffoldBackgroundColor,
            //       ],
            //       // from the top to the bottom
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //     ),
            //   ),
            // ),

            // set padding for the app bar
            titleSpacing: 0,
            elevation: 0.3.sp,
          );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}
