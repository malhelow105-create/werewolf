import 'dart:async';

class SocketService {
  final StreamController<Map<String, dynamic>> _eventsController =
      StreamController<Map<String, dynamic>>.broadcast();

  bool _connected = false;

  bool get isConnected => _connected;
  Stream<Map<String, dynamic>> get eventsStream => _eventsController.stream;

  Future<void> connect() async {
    _connected = true;
  }

  Future<void> disconnect() async {
    _connected = false;
  }

  void emit(String event, Map<String, dynamic> payload) {
    _eventsController.add(<String, dynamic>{
      'event': event,
      'payload': payload,
    });
  }

  Future<void> dispose() async {
    await _eventsController.close();
  }
}
