import 'package:flutter/material.dart';
import 'package:travel_app/repesentattion/screens/splash_screen.dart';
import 'package:travel_app/repesentattion/screens/start_screen_1.dart';

final Map<String, WidgetBuilder> routers = {
  SplashScreen.routerName: (context) => const SplashScreen(),
  StartScreen1.routerName: (context) => const StartScreen1(),
};
