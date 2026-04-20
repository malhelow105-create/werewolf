import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../widgets/home_action_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Werewolf Lobby')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              HomeActionCard(
                title: 'Create Room',
                subtitle: 'Host a game and invite friends',
                icon: Icons.add_circle_outline,
                onTap: () => Navigator.of(context).pushNamed(AppRouter.createRoom),
              ),
              const SizedBox(height: 12),
              HomeActionCard(
                title: 'Join Room',
                subtitle: 'Use a room code to join instantly',
                icon: Icons.meeting_room_outlined,
                onTap: () => Navigator.of(context).pushNamed(AppRouter.joinRoom),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
