import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';
import 'package:travel_app/repesentattion/widgets/item_add_guest_and_room.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  const GuestAndRoomBookingScreen({super.key});
  static const String RouterName = '/guest_and_room_booking';
  @override
  State<GuestAndRoomBookingScreen> createState() =>
      _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Add guest and room',
      child: Column(
        children: [
          SizedBox(height: 16),
          ItemAddGuestAndRoom(
            icon: AssetHelper.guestIcon,
            initData: 2,
            title: 'Guest',
          ),
          ItemAddGuestAndRoom(
            icon: AssetHelper.bedIcon,
            initData: 1,
            title: 'room',
          ),
        ],
      ),
    );
  }
}
