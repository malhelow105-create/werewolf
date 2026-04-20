import 'package:flutter/material.dart';

class TimerBar extends StatelessWidget {
  const TimerBar({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(value: value.clamp(0, 1));
  }
}
