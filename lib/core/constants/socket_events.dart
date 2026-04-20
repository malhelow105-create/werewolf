class SocketEvents {
  static const String connect = 'connect';
  static const String disconnect = 'disconnect';
  static const String createRoom = 'create_room';
  static const String joinRoom = 'join_room';
  static const String playerJoined = 'player_joined';
  static const String playerReady = 'player_ready';
  static const String gameStarted = 'game_started';
  static const String phaseChanged = 'phase_changed';
  static const String voteCast = 'vote_cast';
  static const String roundEnded = 'round_ended';
  static const String gameOver = 'game_over';

  const SocketEvents._();
}
