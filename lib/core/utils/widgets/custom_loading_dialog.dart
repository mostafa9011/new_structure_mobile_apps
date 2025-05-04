
import 'package:flutter/material.dart';
import 'package:new_structure/core/utils/widgets/custom_alert_dialog.dart';

import '../../../generated/l10n.dart';

void customLoadingDialog({
  required BuildContext context,
  String? text,
}) {
  showCustomAlertDialog(
    context: context,
    title: text ?? S.of(context).loading,
    content: const Center(child: CircularProgressIndicator()),
  );
}
