import 'player_model.dart';

class RoomModel {
  const RoomModel({
    required this.id,
    required this.code,
    required this.hostId,
    required this.players,
    this.maxPlayers = 12,
    this.isLocked = false,
  });

  final String id;
  final String code;
  final String hostId;
  final List<PlayerModel> players;
  final int maxPlayers;
  final bool isLocked;

  RoomModel copyWith({
    String? id,
    String? code,
    String? hostId,
    List<PlayerModel>? players,
    int? maxPlayers,
    bool? isLocked,
  }) {
    return RoomModel(
      id: id ?? this.id,
      code: code ?? this.code,
      hostId: hostId ?? this.hostId,
      players: players ?? this.players,
      maxPlayers: maxPlayers ?? this.maxPlayers,
      isLocked: isLocked ?? this.isLocked,
    );
  }

  factory RoomModel.fromMap(Map<String, dynamic> map) {
    final List<dynamic> playersMap = map['players'] as List<dynamic>? ?? <dynamic>[];
    return RoomModel(
      id: map['id'] as String,
      code: map['code'] as String,
      hostId: map['hostId'] as String,
      players: playersMap
          .map((dynamic item) => PlayerModel.fromMap(item as Map<String, dynamic>))
          .toList(),
      maxPlayers: map['maxPlayers'] as int? ?? 12,
      isLocked: map['isLocked'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'code': code,
      'hostId': hostId,
      'players': players.map((PlayerModel e) => e.toMap()).toList(),
      'maxPlayers': maxPlayers,
      'isLocked': isLocked,
    };
  }
}
