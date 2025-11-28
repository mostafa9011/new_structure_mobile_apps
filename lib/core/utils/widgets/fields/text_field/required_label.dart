import 'package:flutter/Material.dart';

import '../../../../config/themes/app_theme.dart';

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
                  TextStyles.bold20W700(context).copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            if (isRequired) ...[
              const SizedBox(width: 4),
              Text(
                '*',
                style: TextStyles.bold16W700(context).copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
