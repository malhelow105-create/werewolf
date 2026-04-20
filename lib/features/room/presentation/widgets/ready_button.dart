import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_button.dart';

class ReadyButton extends StatelessWidget {
  const ReadyButton({
    super.key,
    required this.isReady,
    required this.onPressed,
  });

  final bool isReady;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: isReady ? 'Ready!' : 'Mark Ready',
      onPressed: onPressed,
    );
  }
}
