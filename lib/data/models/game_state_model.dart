import 'phase_model.dart';
import 'player_model.dart';
import 'vote_model.dart';

class GameStateModel {
  const GameStateModel({
    required this.roomId,
    required this.players,
    required this.phase,
    this.round = 1,
    this.votes = const <VoteModel>[],
    this.currentTurnPlayerId,
  });

  final String roomId;
  final List<PlayerModel> players;
  final PhaseModel phase;
  final int round;
  final List<VoteModel> votes;
  final String? currentTurnPlayerId;

  GameStateModel copyWith({
    String? roomId,
    List<PlayerModel>? players,
    PhaseModel? phase,
    int? round,
    List<VoteModel>? votes,
    String? currentTurnPlayerId,
  }) {
    return GameStateModel(
      roomId: roomId ?? this.roomId,
      players: players ?? this.players,
      phase: phase ?? this.phase,
      round: round ?? this.round,
      votes: votes ?? this.votes,
      currentTurnPlayerId: currentTurnPlayerId ?? this.currentTurnPlayerId,
    );
  }
}
