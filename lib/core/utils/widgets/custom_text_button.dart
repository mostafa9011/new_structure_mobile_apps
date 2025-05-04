import 'package:flutter/Material.dart';
import 'package:new_structure/config/themes/text_style.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Color? color;
  final void Function()? ontap;
  final double? fontSize;

  const CustomTextButton({
    super.key,
    required this.title,
    this.color,
    this.ontap,
    this.fontSize,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.zero,
        ),
      ),
      onPressed: ontap,
      child: Text(
        title,
        style: getBoldStyle(
          color: color ?? Theme.of(context).colorScheme.primary,
          fontSize: fontSize ?? 15,
        ),
      ),
    );
  }
}
