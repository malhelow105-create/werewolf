import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../../../../data/models/player_model.dart';
import '../widgets/vote_player_tile.dart';

class VotingScreen extends StatelessWidget {
  const VotingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlayerModel> players = <PlayerModel>[
      const PlayerModel(id: '1', name: 'Alex'),
      const PlayerModel(id: '2', name: 'Jordan'),
      const PlayerModel(id: '3', name: 'Taylor'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Voting')),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (BuildContext context, int index) {
          return VotePlayerTile(
            player: players[index],
            onTap: () => Navigator.of(context).pushNamed(AppRouter.roundResult),
          );
        },
      ),
    );
  }
}
