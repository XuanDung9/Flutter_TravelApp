import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_app/core/constants/color_constant.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/repesentattion/screens/home_screen.dart';

class FontScreen extends StatefulWidget {
  const FontScreen({super.key});
  static String routerName = '/font_screen';
  @override
  State<FontScreen> createState() => _FontScreenState();
}

class _FontScreenState extends State<FontScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(color: Colors.blue),
          Container(color: Colors.brown),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        selectedItemColor: ColorPalette.buttonColor,
        unselectedItemColor: Colors.grey.withOpacity(0.2),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        items: [
          SalomonBottomBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(FontAwesomeIcons.house, size: 22),
                Text('Home', style: TextStyle(fontSize: 12)),
              ],
            ),
            title: Container(), // Ẩn title mặc định
          ),
          SalomonBottomBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(FontAwesomeIcons.wallet, size: 22),
                Text('Wallet', style: TextStyle(fontSize: 12)),
              ],
            ),
            title: Container(),
          ),
          SalomonBottomBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(FontAwesomeIcons.compass, size: 22),
                Text('Guide', style: TextStyle(fontSize: 12)),
              ],
            ),
            title: Container(),
          ),
          SalomonBottomBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Image.asset(AssetHelper.flyIcon),
                Icon(FontAwesomeIcons.chartLine, size: 22),
                Text('Chair', style: TextStyle(fontSize: 12)),
              ],
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }
}
