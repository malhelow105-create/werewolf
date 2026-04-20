import 'package:provider/provider.dart';

import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/game/presentation/providers/game_provider.dart';
import '../../features/room/presentation/providers/room_provider.dart';

class AppProviders {
  static List<SingleChildWidget> get providers =>
      <SingleChildWidget>[
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<RoomProvider>(
          create: (_) => RoomProvider(),
        ),
        ChangeNotifierProvider<GameProvider>(
          create: (_) => GameProvider(),
        ),
      ];

  const AppProviders._();
}
