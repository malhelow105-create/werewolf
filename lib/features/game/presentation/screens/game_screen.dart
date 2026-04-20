import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../../../../data/models/player_model.dart';
import '../widgets/action_panel.dart';
import '../widgets/alive_players_list.dart';
import '../widgets/phase_header.dart';
import '../widgets/timer_bar.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlayerModel> players = <PlayerModel>[
      const PlayerModel(id: '1', name: 'You', isAlive: true),
      const PlayerModel(id: '2', name: 'Alex', isAlive: true),
      const PlayerModel(id: '3', name: 'Sam', isAlive: false),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Game')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const PhaseHeader(title: 'Day Phase', subtitle: 'Discuss and decide'),
            const SizedBox(height: 12),
            const TimerBar(value: 0.6),
            const SizedBox(height: 12),
            Expanded(child: AlivePlayersList(players: players)),
            ActionPanel(
              primaryLabel: 'Go To Voting',
              onPrimaryPressed: () => Navigator.of(context).pushNamed(AppRouter.voting),
            ),
          ],
        ),
      ),
    );
  }
}
