import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../extensions/context_extension.dart';
import '../../../phone_number.dart';
import '../text_field/custom_text_form_field.dart';
import 'phone_field_prefix.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({
    super.key,
    this.enabled = true,
    this.isRequired = true,
    this.errorText,
    this.phoneNumberNotifier,
  });

  final bool enabled;
  final bool isRequired;
  final String? errorText;
  final PhoneNumberNotifier? phoneNumberNotifier;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  late PhoneNumber _phoneNumber;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    if (widget.phoneNumberNotifier?.value != null) {
      _phoneNumber = widget.phoneNumberNotifier!.value!;
    } else {
      _phoneNumber = PhoneNumber();
    }

    _textController = TextEditingController(text: _phoneNumber.number);
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      errorText: widget.errorText,
      labelText: context.tr.phoneNumber,
      enabled: widget.enabled,
      hintText: context.tr.phoneNumberHint,
      isRequired: widget.isRequired,
      controller: _textController,
      // prefixIconPath: AssetsManager.call,
      keyboardType: TextInputType.phone,
      maxLength: _phoneNumber.fullLength - _phoneNumber.dialCode.length,
      validator: _validator,
      onChanged: _onNumberChanged,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      prefixIcon: PhoneFieldPrefix(
        dialCode: _phoneNumber.dialCode,
        onChanged: (country) => _onDialCodeChanged(country.dialCode!),
      ),
    );
  }

  void _onNumberChanged(String number) {
    _phoneNumber = _phoneNumber.copyWith(number: number);
    widget.phoneNumberNotifier!.value = _phoneNumber;
    setState(() {});
  }

  void _onDialCodeChanged(String dialCode) {
    // Update the phone number with the new dial code
    _phoneNumber = PhoneNumber.fromString(dialCode);
    // Clear the text controller
    _textController.text = '';
    widget.phoneNumberNotifier!.value = _phoneNumber;
    setState(() {});
  }

  String? _validator(String value) {
    if (widget.isRequired && value.isEmpty) {
      return context.tr.phoneRequired;
    }
    if (_textController.text.length != _phoneNumber.numberLength) {
      return context.tr.invalidPhoneNumber;
    }

    return null;
  }
}
