import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_button.dart';

class ActionPanel extends StatelessWidget {
  const ActionPanel({
    super.key,
    required this.primaryLabel,
    required this.onPrimaryPressed,
    this.secondaryLabel,
    this.onSecondaryPressed,
  });

  final String primaryLabel;
  final VoidCallback onPrimaryPressed;
  final String? secondaryLabel;
  final VoidCallback? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppButton(label: primaryLabel, onPressed: onPrimaryPressed),
        if (secondaryLabel != null && onSecondaryPressed != null) ...<Widget>[
          const SizedBox(height: 8),
          AppButton(label: secondaryLabel!, onPressed: onSecondaryPressed),
        ],
      ],
    );
  }
}
