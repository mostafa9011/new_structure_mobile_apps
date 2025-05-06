import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/core/extensions/context_extension.dart';

import '../../../config/themes/text_style.dart';

class LabelTextComponent extends StatelessWidget {
  final String? labelText;
  final bool isRequired;
  const LabelTextComponent(
      {super.key, this.labelText, required this.isRequired});

  @override
  Widget build(BuildContext context) {
    if (labelText == null) return const SizedBox();
    return Padding(
      padding: EdgeInsets.only(bottom: context.isMobile ? 10.h : 20.h),
      child: Text.rich(
        TextSpan(
          text: "$labelText : ",
          style: getMediumStyle(
            fontSize: 16,
            color: context.colorScheme.onSurface,
          ),
          children: [
            if (isRequired)
              TextSpan(
                text: '*',
                style: getMediumStyle(
                  fontSize: 16,
                  color: context.colorScheme.error,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
