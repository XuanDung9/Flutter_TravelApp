import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constant.dart';
import 'package:travel_app/core/constants/textstyle_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your next trip',
              style: Textstyles.defaultStyle.subtitleTextColor.copyWith(
                fontSize: 16,
              ),
              selectionColor: ColorPalette.subTitleColor,
            ),
            const SizedBox(height: 12),
            Text(
              'Nordic scenery',
              style: Textstyles.defaultStyle.semibold,
              selectionColor: ColorPalette.text1Color,
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      //icon: Icon(FontAwesomeIcons.search, size: 22),
                      labelText: 'Search...',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 24),
                    ),
                  ),
                ),
                SizedBox(width: 22),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue, // Màu nền cho nút
                    ),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.bars,
                        size: 22,
                        color: Colors.white, // Màu icon
                      ),
                      onPressed: () {
                        print("Menu icon pressed");
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Popular locations',
              style: Textstyles.defaultStyle.bold.copyWith(fontSize: 16),
              selectionColor: ColorPalette.text1Color,
            ),
          ],
        ),
      ),
    );
  }
}
