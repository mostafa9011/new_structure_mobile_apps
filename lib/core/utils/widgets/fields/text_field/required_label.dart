import 'package:flutter/Material.dart';

import '../../../../../config/themes/text_style.dart';

class RequiredLabel extends StatelessWidget {
  const RequiredLabel({
    required this.labelText,
    required this.isRequired,
    this.labelStyle,
    super.key,
  });

  final String? labelText;
  final TextStyle? labelStyle;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Row(
          children: [
            Text(
              "$labelText :",
              style: labelStyle ??
                  getBoldStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 16,
                  ),
            ),
            if (isRequired) ...[
              const SizedBox(width: 4),
              Text(
                '*',
                style: getBoldStyle(
                  color: Theme.of(context).colorScheme.error,
                  fontSize: 16,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
