import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/app_theme.dart';
import '../../../../../config/themes/assets_manager.dart';
import '../../../../extensions/context_extension.dart';
import '../../custom_svg_picture.dart';

class PhoneFieldPrefix extends StatelessWidget {
  final String dialCode;
  final void Function(CountryCode)? onChanged;

  const PhoneFieldPrefix({
    required this.dialCode,
    super.key,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      // Search related properties
      searchDecoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.r),
        ),
        hintText: context.tr.search,
        hintStyle: TextStyles.regular12W400(context).copyWith(
          color: context.colorScheme.secondary,
        ),
      ),
      flagWidth: 30.w,
      flagDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.isTablet ? 10.r : 5.r),
      ),
      dialogTextStyle: TextStyles.regular12W400(context).copyWith(
        color: context.colorScheme.onSurface,
      ),
      dialogSize: Size(0.8.sw, 0.6.sh),
      searchStyle: TextStyles.regular12W400(context).copyWith(
        color: context.colorScheme.onSurface,
      ),
      headerTextStyle: TextStyles.regular12W400(context).copyWith(
        fontSize: context.isTablet ? 14 : 16,
        color: context.colorScheme.secondary,
      ),
      closeIcon: Icon(
        Icons.close,
        size: context.isTablet ? 10.w : 20.w,
        color: context.colorScheme.secondary,
      ),

      // Other properties
      textStyle: TextStyles.regular16W400(context).copyWith(
        color: context.colorScheme.secondary,
      ),
      initialSelection: dialCode,
      onChanged: onChanged,
      builder: (country) {
        return Container(
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            border: Border.all(
              color: context.colorScheme.secondary,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Flag
              Container(
                width: context.isTablet ? 24.w : 20.w,
                height: context.isTablet ? 24.h : 20.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  country!.flagUri!,
                  package: 'country_code_picker',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 2.w),

              // Dial code
              Text(
                country.dialCode!,
                style: TextStyles.regular14W400(context).copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
              SizedBox(width: 4.w),

              //arrow down
              CustomSvgPicture.asset(
                assetName: AssetsManager.arrowDown,
                height: context.isTablet ? 8.h : 6.h,
                width: context.isTablet ? 8.w : 6.w,
                color: context.colorScheme.onSurface,
              ),
              // vertical divider
            ],
          ),
        );
      },
    );
  }
}
