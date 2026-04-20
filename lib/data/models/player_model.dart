import 'role_model.dart';

class PlayerModel {
  const PlayerModel({
    required this.id,
    required this.name,
    this.isHost = false,
    this.isReady = false,
    this.isAlive = true,
    this.role,
  });

  final String id;
  final String name;
  final bool isHost;
  final bool isReady;
  final bool isAlive;
  final RoleModel? role;

  PlayerModel copyWith({
    String? id,
    String? name,
    bool? isHost,
    bool? isReady,
    bool? isAlive,
    RoleModel? role,
  }) {
    return PlayerModel(
      id: id ?? this.id,
      name: name ?? this.name,
      isHost: isHost ?? this.isHost,
      isReady: isReady ?? this.isReady,
      isAlive: isAlive ?? this.isAlive,
      role: role ?? this.role,
    );
  }

  factory PlayerModel.fromMap(Map<String, dynamic> map) {
    return PlayerModel(
      id: map['id'] as String,
      name: map['name'] as String,
      isHost: map['isHost'] as bool? ?? false,
      isReady: map['isReady'] as bool? ?? false,
      isAlive: map['isAlive'] as bool? ?? true,
      role: map['role'] == null
          ? null
          : RoleModel.values.byName(map['role'] as String),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'isHost': isHost,
      'isReady': isReady,
      'isAlive': isAlive,
      'role': role?.name,
    };
  }
}
