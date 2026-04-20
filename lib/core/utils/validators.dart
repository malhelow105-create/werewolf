import '../constants/app_constants.dart';

class Validators {
  static String? guestName(String? value) {
    final String name = (value ?? '').trim();
    if (name.isEmpty) {
      return 'Enter a guest name';
    }
    if (name.length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  static String? roomCode(String? value) {
    final String code = (value ?? '').trim().toUpperCase();
    if (code.length != AppConstants.roomCodeLength) {
      return 'Room code must be ${AppConstants.roomCodeLength} characters';
    }
    return null;
  }

  const Validators._();
}
