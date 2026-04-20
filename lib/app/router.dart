import 'package:flutter/material.dart';

import '../features/auth/presentation/screens/auth_screen.dart';
import '../features/game/presentation/screens/game_over_screen.dart';
import '../features/game/presentation/screens/game_screen.dart';
import '../features/game/presentation/screens/role_reveal_screen.dart';
import '../features/game/presentation/screens/round_result_screen.dart';
import '../features/game/presentation/screens/voting_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/room/presentation/screens/create_room_screen.dart';
import '../features/room/presentation/screens/join_room_screen.dart';
import '../features/room/presentation/screens/lobby_screen.dart';
import '../features/splash/presentation/splash_screen.dart';

class AppRouter {
  static const String initialRoute = '/';
  static const String splash = '/';
  static const String auth = '/auth';
  static const String home = '/home';
  static const String createRoom = '/room/create';
  static const String joinRoom = '/room/join';
  static const String lobby = '/room/lobby';
  static const String roleReveal = '/game/role';
  static const String game = '/game';
  static const String voting = '/game/voting';
  static const String roundResult = '/game/result';
  static const String gameOver = '/game/over';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return _page(const SplashScreen());
      case auth:
        return _page(const AuthScreen());
      case home:
        return _page(const HomeScreen());
      case createRoom:
        return _page(const CreateRoomScreen());
      case joinRoom:
        return _page(const JoinRoomScreen());
      case lobby:
        return _page(const LobbyScreen());
      case roleReveal:
        return _page(const RoleRevealScreen());
      case game:
        return _page(const GameScreen());
      case voting:
        return _page(const VotingScreen());
      case roundResult:
        return _page(const RoundResultScreen());
      case gameOver:
        return _page(const GameOverScreen());
      default:
        return _page(
          Scaffold(
            body: Center(
              child: Text('Route not found: ${settings.name}'),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute<dynamic> _page(Widget child) {
    return MaterialPageRoute<dynamic>(builder: (_) => child);
  }
}
