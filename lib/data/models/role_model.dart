enum RoleModel {
  villager,
  werewolf,
  seer,
  doctor,
}

extension RoleModelX on RoleModel {
  String get displayName {
    switch (this) {
      case RoleModel.villager:
        return 'Villager';
      case RoleModel.werewolf:
        return 'Werewolf';
      case RoleModel.seer:
        return 'Seer';
      case RoleModel.doctor:
        return 'Doctor';
    }
  }
}
