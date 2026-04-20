import 'package:flutter/material.dart';

import '../../../../data/models/player_model.dart';
import '../../../../shared/widgets/avatar_circle.dart';

class PlayerTile extends StatelessWidget {
  const PlayerTile({super.key, required this.player});

  final PlayerModel player;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AvatarCircle(name: player.name),
      title: Text(player.name),
      subtitle: Text(player.isHost ? 'Host' : 'Player'),
      trailing: Icon(
        player.isReady ? Icons.check_circle : Icons.hourglass_top,
        color: player.isReady ? Colors.green : Colors.orange,
      ),
    );
  }
}
