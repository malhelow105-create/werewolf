import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../widgets/result_card.dart';

class GameOverScreen extends StatelessWidget {
  const GameOverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Over')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const ResultCard(
              title: 'Villagers Win',
              message: 'All werewolves were eliminated.',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                AppRouter.home,
                (Route<dynamic> route) => false,
              ),
              child: const Text('Back To Home'),
            ),
          ],
        ),
      ),
    );
  }
}
