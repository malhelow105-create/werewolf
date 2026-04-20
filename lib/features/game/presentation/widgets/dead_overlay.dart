import 'package:flutter/material.dart';

class DeadOverlay extends StatelessWidget {
  const DeadOverlay({super.key, required this.isDead, required this.child});

  final bool isDead;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!isDead) {
      return child;
    }

    return Stack(
      children: <Widget>[
        child,
        Positioned.fill(
          child: ColoredBox(
            color: Colors.black.withValues(alpha: 0.6),
            child: const Center(
              child: Text('You are out', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
