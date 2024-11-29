import 'package:flutter/material.dart';
import 'package:store_app/core/routes/no_route.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/auth/login/presentation/screens/login_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case RoutesNames.login:
            return const LogInScreen();
          default:
            return NoRouteScreen(roteName: settings.name!);
        }
      },
    );
  }
}
