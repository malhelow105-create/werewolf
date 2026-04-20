import 'package:flutter/foundation.dart';

import '../../../../data/repositories/auth_repository.dart';
import '../../../../data/services/local_storage_service.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider({AuthRepository? repository})
      : _repository = repository ?? AuthRepository(LocalStorageService());

  final AuthRepository _repository;

  String _guestName = '';
  bool _isLoading = false;

  String get guestName => _guestName;
  bool get isLoading => _isLoading;

  void setGuestName(String value) {
    _guestName = value;
    notifyListeners();
  }

  Future<void> continueAsGuest() async {
    _isLoading = true;
    notifyListeners();

    await _repository.signInAsGuest(_guestName);

    _isLoading = false;
    notifyListeners();
  }
}
