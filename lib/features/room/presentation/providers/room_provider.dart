import 'package:flutter/foundation.dart';

import '../../../../data/models/player_model.dart';
import '../../../../data/models/room_model.dart';

class RoomProvider extends ChangeNotifier {
  RoomModel? _room;

  RoomModel? get room => _room;
  List<PlayerModel> get players => _room?.players ?? <PlayerModel>[];

  void setRoom(RoomModel room) {
    _room = room;
    notifyListeners();
  }

  void setPlayerReady(String playerId, bool isReady) {
    final RoomModel? current = _room;
    if (current == null) {
      return;
    }

    final List<PlayerModel> updatedPlayers = current.players
        .map(
          (PlayerModel player) => player.id == playerId
              ? player.copyWith(isReady: isReady)
              : player,
        )
        .toList();

    _room = current.copyWith(players: updatedPlayers);
    notifyListeners();
  }
}
