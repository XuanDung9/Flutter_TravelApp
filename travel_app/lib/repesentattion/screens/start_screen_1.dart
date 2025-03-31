import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/core/constants/assets_constant.dart';

class StartScreen1 extends StatefulWidget {
  const StartScreen1({super.key});

  static const routerName = 'start-screen-1';

  @override
  State<StartScreen1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StartScreen1> {
  final PageController _pageController = PageController();

  Widget _builderItemStartScreen(
    String image,
    String title,
    String description,
  ) {
    return Column(children: [Image.asset(AssetsConstant.StartPage1)]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageView(controller: _pageController, children: [
      

        ],
      ));
  }
}
