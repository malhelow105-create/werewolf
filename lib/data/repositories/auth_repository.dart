import '../../core/utils/result.dart';
import '../services/local_storage_service.dart';

class AuthRepository {
  AuthRepository(this._localStorageService);

  final LocalStorageService _localStorageService;
  static const String _guestNameKey = 'guest_name';

  Future<Result<String>> signInAsGuest(String guestName) async {
    if (guestName.trim().isEmpty) {
      return const Failure<String>('Guest name is required');
    }

    await _localStorageService.writeString(_guestNameKey, guestName.trim());
    return Success<String>(guestName.trim());
  }

  Future<String?> getSavedGuestName() {
    return _localStorageService.readString(_guestNameKey);
  }
}
