import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/assets_constant.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/core/helpers/local_storage_helper.dart';
import 'package:travel_app/repesentattion/screens/font_screen.dart';
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
    final ignoreIntroScreen =
        await LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;

    await Future.delayed(const Duration(seconds: 5));
    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      Navigator.of(context).pushNamed(FontScreen.routerName);
    } else {
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(StartScreen1.routerName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.BackgroundApp,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
