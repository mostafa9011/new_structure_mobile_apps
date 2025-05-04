import 'package:flutter/Material.dart';
import 'package:new_structure/core/extensions/context_extension.dart';

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
      scale: context.isTablet ? 2 : 1.5,
      child: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
