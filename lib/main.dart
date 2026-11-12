import 'package:flutter/material.dart';
import 'package:space/core/app_routes.dart';
import 'package:space/core/app_theme_manager.dart';
import 'package:space/feature/home/home_screen.dart';
import 'package:space/feature/login/login_screen.dart';
import 'package:space/feature/planet_details/planet_details_screen.dart';

import 'core/models/planet_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.appTheme(),
      initialRoute: AppRoutes.loginRoute,
      routes: {
        AppRoutes.loginRoute: (context) => const LoginScreen(),
        AppRoutes.homeRoute: (context) => const HomeScreen(),
        AppRoutes.planetDetails: (context) {
          final planet = ModalRoute.of(context)!.settings.arguments
          as PlanetModel;
          return PlanetDetailsScreen(planet: planet);
        }
      },

    );
  }
}

