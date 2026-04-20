class LocalStorageService {
  final Map<String, Object?> _storage = <String, Object?>{};

  Future<void> writeString(String key, String value) async {
    _storage[key] = value;
  }

  Future<String?> readString(String key) async {
    return _storage[key] as String?;
  }

  Future<void> clearKey(String key) async {
    _storage.remove(key);
  }
}
