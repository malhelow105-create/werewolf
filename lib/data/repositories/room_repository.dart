import '../../core/constants/socket_events.dart';
import '../../core/utils/result.dart';
import '../models/player_model.dart';
import '../models/room_model.dart';
import '../services/local_storage_service.dart';
import '../services/socket_service.dart';

class RoomRepository {
  RoomRepository(this._socketService, this._localStorageService);

  final SocketService _socketService;
  final LocalStorageService _localStorageService;

  Future<Result<RoomModel>> createRoom(String hostName) async {
    if (hostName.trim().isEmpty) {
      return const Failure<RoomModel>('Host name is required');
    }

    final RoomModel room = RoomModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      code: 'WOLF42',
      hostId: 'host_1',
      players: <PlayerModel>[
        PlayerModel(id: 'host_1', name: hostName, isHost: true),
      ],
    );

    await _localStorageService.writeString('last_room_code', room.code);
    _socketService.emit(SocketEvents.createRoom, room.toMap());
    return Success<RoomModel>(room);
  }

  Future<Result<RoomModel>> joinRoom(String roomCode, String playerName) async {
    if (roomCode.trim().isEmpty || playerName.trim().isEmpty) {
      return const Failure<RoomModel>('Room code and player name are required');
    }

    final RoomModel room = RoomModel(
      id: 'room_1',
      code: roomCode.trim().toUpperCase(),
      hostId: 'host_1',
      players: <PlayerModel>[
        const PlayerModel(id: 'host_1', name: 'Host', isHost: true),
        PlayerModel(id: 'player_2', name: playerName.trim()),
      ],
    );

    _socketService.emit(SocketEvents.joinRoom, room.toMap());
    return Success<RoomModel>(room);
  }

  Future<void> setReady({required String playerId, required bool isReady}) async {
    _socketService.emit(
      SocketEvents.playerReady,
      <String, dynamic>{'playerId': playerId, 'isReady': isReady},
    );
  }
}
