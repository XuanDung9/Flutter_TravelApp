import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/core/constants/assets_constant.dart';
import 'package:travel_app/core/constants/color_constant.dart';
import 'package:travel_app/core/constants/textstyle_constant.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/repesentattion/screens/font_screen.dart';

class StartScreen1 extends StatefulWidget {
  const StartScreen1({super.key});

  static const routerName = 'start-screen-1';

  @override
  State<StartScreen1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StartScreen1> {
  final PageController _pageController = PageController();

  Widget _buildItemStartScreen(String image, String title, String description) {
    return Column(
      children: [
        SizedBox(height: 102),
        Stack(
          children: [
            ImageHelper.loadFromAsset(image, height: 375),
            Positioned(top: 102, child: SizedBox(height: 306, width: 406)),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 34),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Textstyles.defaultStyle.bold,
              ),
              const SizedBox(height: 24),
              Text(
                description,
                textAlign: TextAlign.center,
                style: Textstyles.defaultStyle.subtitleTextColor.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 54),
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: ColorPalette.buttonColor,
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  onTap: () {
                    if (_pageController.page == 2) {
                      Navigator.of(context).pushNamed(FontScreen.routerName);
                    } else {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Center(
                    child: Image.asset(AssetsConstant.iconRightArrow),
                  ),
                ),
              ),
              const SizedBox(height: 84),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetsConstant.iconLighning),
                  Text(
                    'Nordic Vacation Sponsor',
                    style: Textstyles.defaultStyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          _buildItemStartScreen(
            AssetHelper.StartPage1,
            'Make your own private travel plan13',
            'Formulate your strategy to receive wonderful gift packs',
          ),
          _buildItemStartScreen(
            AssetHelper.StartPage2,
            'Customize your High-end travel',
            'Countless high-end entertainment facilities',
          ),
          _buildItemStartScreen(
            AssetHelper.StartPage3,
            'High-end leisure projects to choose from',
            'The worlds first-class modern leisure and entertainment method',
          ),
        ],
      ),
    );
  }
}
