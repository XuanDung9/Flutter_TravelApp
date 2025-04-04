import 'package:flutter/material.dart';
import 'package:travel_app/repesentattion/screens/font_screen.dart';
import 'package:travel_app/repesentattion/screens/guest_and_room_booking_screen.dart';
import 'package:travel_app/repesentattion/screens/hotel_booking_screen.dart';
import 'package:travel_app/repesentattion/screens/hotels_screen.dart';
import 'package:travel_app/repesentattion/screens/select_date_screen.dart';
import 'package:travel_app/repesentattion/screens/splash_screen.dart';
import 'package:travel_app/repesentattion/screens/start_screen_1.dart';

final Map<String, WidgetBuilder> routers = {
  SplashScreen.routerName: (context) => const SplashScreen(),
  StartScreen1.routerName: (context) => const StartScreen1(),
  FontScreen.routerName: (context) => const FontScreen(),
  HotelsScreen.routerName: (context) => const HotelsScreen(),
  HotelBookingScreen.routerName: (context) => const HotelBookingScreen(),
  SelectDateScreen.RouterName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.RouterName:
      (context) => GuestAndRoomBookingScreen(),
};
