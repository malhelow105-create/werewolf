import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_button.dart';

class LobbyActions extends StatelessWidget {
  const LobbyActions({
    super.key,
    required this.onReady,
    required this.onStart,
  });

  final VoidCallback onReady;
  final VoidCallback onStart;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppButton(label: 'Ready', onPressed: onReady),
        const SizedBox(height: 8),
        AppButton(label: 'Start Game', onPressed: onStart),
      ],
    );
  }
}
