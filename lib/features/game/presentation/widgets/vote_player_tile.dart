import 'package:flutter/material.dart';

import '../../../../data/models/player_model.dart';

class VotePlayerTile extends StatelessWidget {
  const VotePlayerTile({
    super.key,
    required this.player,
    required this.onTap,
  });

  final PlayerModel player;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(player.name),
      trailing: const Icon(Icons.how_to_vote_outlined),
      onTap: onTap,
    );
  }
}
