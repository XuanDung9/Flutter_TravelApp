import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constant.dart';
import 'package:travel_app/core/constants/textstyle_constant.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/repesentattion/screens/hotel_booking_screen.dart';
import 'package:travel_app/repesentattion/screens/hotel_screen.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildItemCategory(
    Widget icon,
    Color color,
    Function() onTap,
    String title,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(24),
            ),
            child: icon,
          ),
          SizedBox(height: 24),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Jame !',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 24),
                Text(
                  'Where are you going next ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorPalette.text1Color,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(FontAwesomeIcons.bell, size: 24, color: Colors.white),
            SizedBox(width: 24),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),

              child: ImageHelper.loadFromAsset(AssetHelper.avatar),
            ),
          ],
        ),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search your destination',
              prefixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.black,
                  size: 16,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 24),
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: _buildItemCategory(
                  ImageHelper.loadFromAsset(
                    AssetHelper.flyIcon,
                    width: 50,
                    height: 50,
                  ),
                  Color.fromARGB(255, 215, 84, 84),
                  () {
                    Navigator.of(
                      context,
                    ).pushNamed(HotelBookingScreen.routerName);
                  },
                  'Hotels',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _buildItemCategory(
                  ImageHelper.loadFromAsset(
                    AssetHelper.flyIcon,
                    width: 50,
                    height: 50,
                  ),
                  Color.fromARGB(255, 57, 223, 93),
                  () {},
                  'Flights',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _buildItemCategory(
                  ImageHelper.loadFromAsset(
                    AssetHelper.flyIcon,
                    width: 50,
                    height: 50,
                  ),
                  Color.fromARGB(255, 6, 160, 184),
                  () {},
                  'Building',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
