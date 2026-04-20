import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../../../../core/utils/validators.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/app_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _roomCodeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _roomCodeController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _joinRoom() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }
    Navigator.of(context).pushNamed(AppRouter.lobby);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Join Room')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              AppTextField(
                controller: _roomCodeController,
                labelText: 'Room Code',
                textCapitalization: TextCapitalization.characters,
                validator: Validators.roomCode,
              ),
              const SizedBox(height: 12),
              AppTextField(
                controller: _nameController,
                labelText: 'Name',
                validator: Validators.guestName,
              ),
              const SizedBox(height: 16),
              AppButton(label: 'Join', onPressed: _joinRoom),
            ],
          ),
        ),
      ),
    );
  }
}
