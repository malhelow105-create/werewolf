import '../../core/constants/socket_events.dart';
import '../../core/utils/result.dart';
import '../models/game_state_model.dart';
import '../models/phase_model.dart';
import '../models/player_model.dart';
import '../models/vote_model.dart';
import '../services/socket_service.dart';

class GameRepository {
  GameRepository(this._socketService);

  final SocketService _socketService;

  Future<Result<GameStateModel>> startGame({
    required String roomId,
    required List<PlayerModel> players,
  }) async {
    final GameStateModel state = GameStateModel(
      roomId: roomId,
      players: players,
      phase: PhaseModel.roleReveal,
    );

    _socketService.emit(SocketEvents.gameStarted, <String, dynamic>{'roomId': roomId});
    return Success<GameStateModel>(state);
  }

  Future<void> castVote(VoteModel vote) async {
    _socketService.emit(SocketEvents.voteCast, vote.toMap());
  }
}
