import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../widgets/action_panel.dart';
import '../widgets/phase_header.dart';

class RoleRevealScreen extends StatelessWidget {
  const RoleRevealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Role')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const PhaseHeader(title: 'Role Reveal', subtitle: 'Keep it secret!'),
            const SizedBox(height: 24),
            const Expanded(
              child: Center(
                child: Text('Villager', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              ),
            ),
            ActionPanel(
              primaryLabel: 'Continue',
              onPrimaryPressed: () => Navigator.of(context).pushReplacementNamed(AppRouter.game),
            ),
          ],
        ),
      ),
    );
  }
}
