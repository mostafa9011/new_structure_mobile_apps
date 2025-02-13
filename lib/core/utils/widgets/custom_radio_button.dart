import 'package:flutter/Material.dart';
import 'package:new_structure/core/utils/responsive_methods.dart';
import 'package:new_structure/config/themes/color_manager.dart';

class CustomRadioButton extends StatelessWidget {
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;
  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isTablet(context) ? 2 : 1.5,
      child: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: ColorManager.primaryColor,
      ),
    );
  }
}
