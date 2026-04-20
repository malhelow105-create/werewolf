import 'package:flutter/material.dart';

import '../../../../core/utils/validators.dart';
import '../../../../shared/widgets/app_text_field.dart';

class GuestNameField extends StatelessWidget {
  const GuestNameField({
    super.key,
    this.controller,
    this.onChanged,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: controller,
      labelText: 'Guest Name',
      hintText: 'Enter your nickname',
      textCapitalization: TextCapitalization.words,
      validator: Validators.guestName,
      onChanged: onChanged,
    );
  }
}
