import 'package:flutter/material.dart';

import '../../../../data/models/player_model.dart';

class AlivePlayersList extends StatelessWidget {
  const AlivePlayersList({super.key, required this.players});

  final List<PlayerModel> players;

  @override
  Widget build(BuildContext context) {
    final List<PlayerModel> alivePlayers =
        players.where((PlayerModel player) => player.isAlive).toList();

    return ListView.builder(
      itemCount: alivePlayers.length,
      itemBuilder: (BuildContext context, int index) {
        final PlayerModel player = alivePlayers[index];
        return ListTile(
          leading: const Icon(Icons.person_outline),
          title: Text(player.name),
        );
      },
    );
  }
}
