import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../../../../data/models/player_model.dart';
import '../widgets/lobby_actions.dart';
import '../widgets/player_tile.dart';
import '../widgets/room_code_card.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlayerModel> players = <PlayerModel>[
      const PlayerModel(id: '1', name: 'Host', isHost: true, isReady: true),
      const PlayerModel(id: '2', name: 'Player 2', isReady: false),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lobby')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const RoomCodeCard(roomCode: 'WOLF42'),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (BuildContext context, int index) {
                  return PlayerTile(player: players[index]);
                },
              ),
            ),
            LobbyActions(
              onReady: () {},
              onStart: () => Navigator.of(context).pushNamed(AppRouter.roleReveal),
            ),
          ],
        ),
      ),
    );
  }
}
