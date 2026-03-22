import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/detail_screen.dart';
import '../core/models/help_model.dart';
import '../widgets/section_tile.dart';

class AppRoutes {
  static const String home = '/';
  static const String detail = '/detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case detail:
        final help = settings.arguments as HelpModel;

        return MaterialPageRoute(
          builder: (_) => DetailScreen(help: help),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ),
        );
    }
  }
}