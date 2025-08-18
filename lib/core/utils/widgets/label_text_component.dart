import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/app_theme.dart';
import '../../extensions/context_extension.dart';

class LabelTextComponent extends StatelessWidget {
  final String? labelText;
  final bool isRequired;
  const LabelTextComponent({
    required this.isRequired,
    super.key,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    if (labelText == null) return const SizedBox();
    return Padding(
      padding: EdgeInsets.only(bottom: context.isMobile ? 10.h : 20.h),
      child: Text.rich(
        TextSpan(
          text: "$labelText : ",
          style: TextStyles.medium16W500(context).copyWith(
            color: context.colorScheme.onSurface,
          ),
          children: [
            if (isRequired)
              TextSpan(
                text: '*',
                style: TextStyles.medium16W500(context).copyWith(
                  color: context.colorScheme.error,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
