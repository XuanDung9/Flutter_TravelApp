import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/assets_constant.dart';
import 'package:travel_app/repesentattion/screens/start_screen_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routerName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplastScreenState();
}

class _SplastScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectToStartScreen1();
  }

  void redirectToStartScreen1() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).pushNamed(StartScreen1.routerName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(AssetsConstant.BackgroundApp)),
      ],
    );
  }
}
