import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../extensions/context_extension.dart';
import 'text_field/custom_text_form_field.dart';

class PasswordFields extends StatefulWidget {
  /// This widget is used to create a password field
  /// with an optional confirm password field.
  /// and optional old password field.
  const PasswordFields({
    required this.passwordController,
    super.key,
    this.confirmPasswordController,
    this.oldPasswordController,
    this.separatorHeight = 15,
    this.passwordTitle,
    this.passwordHint,
    this.confirmPasswordTitle,
    this.confirmPasswordHint,
    this.validateLength = true,
    this.onChanged,
    this.errorText,
  });

  final TextEditingController passwordController;
  final TextEditingController? oldPasswordController;
  final TextEditingController? confirmPasswordController;

  final double separatorHeight;
  final String? passwordTitle;
  final String? passwordHint;
  final String? confirmPasswordTitle;
  final String? confirmPasswordHint;
  final void Function()? onChanged;
  final bool validateLength;
  final String? errorText;

  @override
  State<PasswordFields> createState() => _PasswordFieldsState();
}

class _PasswordFieldsState extends State<PasswordFields> {
  late bool obscurePassword;
  late bool obscureConfirmPassword;
  late bool obscureOldPassword;

  @override
  void initState() {
    super.initState();
    obscureOldPassword = true;
    obscurePassword = true;
    obscureConfirmPassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Old Password
        if (widget.oldPasswordController != null) ...{
          PasswordField(
            errorText: widget.errorText,
            labelText: context.tr.oldPassword,
            hintText: context.tr.enterOldPasswordHint,
            controller: widget.oldPasswordController,
            obscureText: obscureOldPassword,
            onSuffixPressed: () {
              setState(() => obscureOldPassword = !obscureOldPassword);
            },
            onChanged: (_) {
              setState(() => {});
              widget.onChanged?.call();
            },
          ),
          SizedBox(height: widget.separatorHeight.h),
        },

        // Password
        PasswordField(
          labelText: widget.passwordTitle ?? context.tr.password,
          hintText: widget.passwordHint ?? context.tr.enterPasswordPlaceholder,
          controller: widget.passwordController,
          onSuffixPressed: () {
            setState(() => obscurePassword = !obscurePassword);
          },
          onChanged: (_) {
            setState(() {});
            widget.onChanged?.call();
          },
          obscureText: obscurePassword,
        ),

        // Confirm Password
        if (widget.confirmPasswordController != null) ...[
          SizedBox(height: widget.separatorHeight.h),
          PasswordField(
            labelText: context.tr.confirmPassword,
            hintText: context.tr.enterConfirmPasswordHint,
            controller: widget.confirmPasswordController,
            onSuffixPressed: () {
              setState(() {
                obscureConfirmPassword = !obscureConfirmPassword;
              });
            },
            obscureText: obscureConfirmPassword,
            onChanged: (_) {
              setState(() {});
              widget.onChanged?.call();
            },
            validator: (value) {
              if (widget.passwordController.text != value) {
                return context.tr.passwordNotMatch;
              }
              return null;
            },
          ),
        ],
      ],
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    required this.obscureText,
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.onChanged,
    this.validator,
    this.onSuffixPressed,
    this.errorText,
  });

  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function()? onSuffixPressed;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      errorText: errorText,
      labelText: labelText,
      hintText: hintText,
      controller: controller,
      // prefixIconPath: AssetsManager.lock,
      suffixIcon: IconButton(
        padding: context.isTablet
            ? EdgeInsets.symmetric(horizontal: 20.w)
            : EdgeInsets.zero,
        onPressed: () => onSuffixPressed?.call(),
        icon: Icon(
          obscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: obscureText
              ? context.colorScheme.secondary
              : context.colorScheme.primary,
          size: context.isTablet ? 25.sp : null,
        ),
      ),
      onChanged: onChanged,
      obscureText: obscureText,
      validator: (value) {
        // If the field is empty and validation is required
        if (value.isEmpty) {
          return '${context.tr.passwordRequired}';
        } 
        // else if (value.length < 8) {
        //   return context.tr.passwordLengthError;
        // }
        return validator?.call(value);
      },
    );
  }
}
