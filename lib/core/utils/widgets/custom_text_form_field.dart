import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_structure/core/extensions/context_extension.dart';

import '../../../config/themes/text_style.dart';
import '../functions/input_decoration_getter.dart';
import 'label_text_component.dart';

class CustomTextFormField extends StatelessWidget with InputDecorationGetter {
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? style;
  final String? textHint;
  final String? initialValue;
  final Widget? prefixIcon;
  final bool obscureText;
  final Widget? suffixWidget;
  final String? Function(String?)? validator;
  final void Function(String?)? onchangeFun;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int? maxLength;
  final bool readOnly;
  final Function? onEditingComplete;
  final int maxLines;
  final bool enabled;
  final void Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool isRequired;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderRadius;
  final Color? borderColor;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final bool enableLableTextWidget;
  final double prefixIconEndPadding;
  final void Function()? onTap;

  const CustomTextFormField({
    super.key,
    this.readOnly = false,
    this.labelStyle,
    this.labelText,
    this.style,
    this.textDirection,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.textHint,
    this.borderRadius = 5,
    this.verticalPadding = 16,
    this.horizontalPadding = 16,
    this.maxLength,
    this.maxLines = 1,
    this.initialValue,
    this.onchangeFun,
    this.suffixWidget,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.controller,
    this.onEditingComplete,
    this.enabled = true,
    this.onFieldSubmitted,
    this.isRequired = true,
    this.borderColor,
    this.enableLableTextWidget = true,
    this.prefixIconEndPadding = 10,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label Text
        if (enableLableTextWidget) ...{
          LabelTextComponent(labelText: labelText, isRequired: isRequired),
        },

        // Text Form Field
        TextFormField(
          readOnly: readOnly,
          initialValue: initialValue,
          textAlignVertical: TextAlignVertical.center,
          maxLength: maxLength,
          buildCounter: context.isTablet && maxLength != null
              ? (context,
                  {required currentLength,
                  required isFocused,
                  required maxLength}) {
                  return Text(
                    "$currentLength/$maxLength",
                    style: getRegularStyle(
                      fontSize: 15,
                      color: context.colorScheme.secondary,
                    ),
                  );
                }
              : null,
          textAlign: textAlign,
          textDirection: textDirection,
          scrollPadding: EdgeInsets.zero,
          onFieldSubmitted: onFieldSubmitted,
          enabled: enabled,
          keyboardType: keyboardType,
          cursorColor: context.colorScheme.primary,
          maxLines: maxLines,
          minLines: maxLines,
          style: style ??
              getMediumStyle(
                fontSize: 13,
                color: enabled && !readOnly
                    ? context.colorScheme.onSurface
                    : context.colorScheme.onSurface,
              ),
          decoration: getInputDecoration(
            context: context,
            hintText: textHint ?? labelText,
            enabled: enabled,
            prefixIcon: prefixIcon,
            labelText: labelText,
            suffixWidget: suffixWidget,
            borderRadius: borderRadius,
            verticalPadding: verticalPadding,
            horizontalPadding: horizontalPadding,
            borderColor: borderColor,
            prefixIconEndPadding: prefixIconEndPadding,
            enableLableTextWidget: enableLableTextWidget,
          ),
          onChanged: onchangeFun,
          controller: controller,
          onTap: onTap,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          obscureText: obscureText,
          validator: validator ??
              (value) {
                if ((value == null || value.isEmpty) && isRequired) {
                  return context.tr.fieldRequired;
                }
                return null;
              },
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}
