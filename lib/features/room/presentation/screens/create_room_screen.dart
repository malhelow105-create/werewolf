import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/app_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Room')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            AppTextField(
              controller: _nameController,
              labelText: 'Host Name',
              hintText: 'Enter your name',
            ),
            const SizedBox(height: 16),
            AppButton(
              label: 'Create',
              onPressed: () => Navigator.of(context).pushNamed(AppRouter.lobby),
            ),
          ],
        ),
      ),
    );
  }
}
