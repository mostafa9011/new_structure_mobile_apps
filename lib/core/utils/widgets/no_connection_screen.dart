import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_structure/config/themes/assets_manager.dart';
import 'package:new_structure/config/themes/text_style.dart';
import 'package:new_structure/core/extensions/context_extension.dart';

class NoConnectionScreen extends StatelessWidget {
  final Function? onRetry;
  const NoConnectionScreen({
    super.key,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetsManager.noConnection,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onSurface,
              BlendMode.srcIn,
            ),
          ),
          Text(
            context.tr.connectionError,
            style: getBoldStyle(fontSize: 22.sp),
          ),
        ],
      ),
    );
  }
}
