import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_card.dart';

class RoomCodeCard extends StatelessWidget {
  const RoomCodeCard({super.key, required this.roomCode});

  final String roomCode;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: <Widget>[
          const Text('Room Code'),
          const SizedBox(height: 8),
          SelectableText(
            roomCode,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(letterSpacing: 4),
          ),
        ],
      ),
    );
  }
}
