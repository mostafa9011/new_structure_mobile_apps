import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/app_theme.dart';
import '../../../../extensions/context_extension.dart';
import 'default_prefex_icon.dart';
import 'required_label.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? prefixIconPath;
  final Widget? prefixIcon;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int? maxLength;
  final bool readOnly;
  final int maxLines;
  final int minLines;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final bool isRequired;
  final bool filled;
  final Color? fillColor;
  final String? initialValue;
  final String? errorText;
  final FocusNode? focusNode;
  final bool? hasBorder;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIconPath,
    this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.enabled = true,
    this.inputFormatters,
    this.isRequired = true,
    this.filled = true,
    this.fillColor,
    this.initialValue,
    this.errorText,
    this.focusNode,
    this.hasBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          RequiredLabel(
            labelText: labelText,
            isRequired: isRequired,
          ),
          SizedBox(height: 8.h),
        ],
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          validator: (value) => _validator(context, value),
          initialValue:
              controller == null ? initialValue : null, // avoid conflict
          textAlignVertical: TextAlignVertical.center,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLength: maxLength,
          readOnly: readOnly,
          enabled: enabled,
          inputFormatters: inputFormatters,
          minLines: minLines,
          maxLines: _getMaxLines(),
          decoration: InputDecoration(
            errorText: errorText,
            hintText: capitalizeWords(hintText ?? ''),
            suffixIcon: suffixIcon,
            prefixIcon: _getPrefixIcon(),
            filled: filled,
            fillColor: fillColor ?? theme.inputDecorationTheme.fillColor,
            counterText: '',
            prefixIconConstraints: BoxConstraints(
              minWidth: 50.w,
              maxHeight: context.isTablet ? 90.h : 75.h,
            ),
          ).copyWith(
            border: hasBorder == true ? null : InputBorder.none,
            focusedBorder: hasBorder == true ? null : InputBorder.none,
            enabledBorder: hasBorder == true ? null : InputBorder.none,
            disabledBorder: hasBorder == true ? null : InputBorder.none,
            errorBorder: hasBorder == true ? null : InputBorder.none,
            focusedErrorBorder: hasBorder == true ? null : InputBorder.none,
          ),
          buildCounter: _buildCounter,
          style: TextStyles.regular14W400(context).copyWith(
            fontSize: context.isTablet ? 18 : 14,
            color: theme.colorScheme.onSurface,
          ),
          onChanged: (value) {
            if (onChanged != null) onChanged!(value);
          },
          onTapOutside: (event) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              // FocusScope.of(context).unfocus();
            });
          },
        ),
      ],
    );
  }

  int _getMaxLines() {
    if (!obscureText) {
      if (maxLines > minLines) {
        return maxLines;
      }
      return minLines + 1; // Ensure at least one line is visible
    }
    return maxLines;
  }

  Widget? _getPrefixIcon() {
    if (prefixIconPath != null || prefixIcon != null) {
      return Padding(
        padding: EdgeInsetsDirectional.only(
          end: 8.w,
          start: 1.2.w,
          top: 1.2.h,
          bottom: 1.2.h,
        ),
        child: DefaultPrefixIcon(
          enabled: enabled,
          prefixIconPath: prefixIconPath,
          prefixIcon: prefixIcon,
        ),
      );
    }
    return null;
  }

  Widget? _buildCounter(
    BuildContext context, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  }) {
    return null;
  }

  String? _validator(BuildContext context, String? value) {
    // If a custom validator is provided, call it
    if (validator != null) {
      return validator!(value ?? '');
    }

    // Check if the field is required and empty
    else if (isRequired && (value == null || value.trim().isEmpty)) {
      return capitalizeWords(context.tr.fieldRequired);
    }

    return null;
  }
}

String capitalizeWords(String text) {
  return text.split(' ').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1);
  }).join(' ');
}
