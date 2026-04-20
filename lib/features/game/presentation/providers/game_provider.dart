import 'package:flutter/foundation.dart';

import '../../../../data/models/game_state_model.dart';
import '../../../../data/models/phase_model.dart';

class GameProvider extends ChangeNotifier {
  GameStateModel? _state;

  GameStateModel? get state => _state;
  PhaseModel get phase => _state?.phase ?? PhaseModel.lobby;

  void setState(GameStateModel state) {
    _state = state;
    notifyListeners();
  }

  void setPhase(PhaseModel phase) {
    final GameStateModel? current = _state;
    if (current == null) {
      return;
    }
    _state = current.copyWith(phase: phase);
    notifyListeners();
  }
}
