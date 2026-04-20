import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../widgets/result_card.dart';

class RoundResultScreen extends StatelessWidget {
  const RoundResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Round Result')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const ResultCard(
              title: 'Vote Outcome',
              message: 'No player was eliminated this round.',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushReplacementNamed(AppRouter.game),
              child: const Text('Next Round'),
            ),
          ],
        ),
      ),
    );
  }
}
