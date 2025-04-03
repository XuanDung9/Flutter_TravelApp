import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';
import 'package:travel_app/repesentattion/widgets/button_widget.dart';
import 'package:travel_app/repesentattion/widgets/item_add_guest_and_room.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  //const GuestAndRoomBookingScreen({super.key});
  static const String RouterName = '/guest_and_room_booking';

  @override
  State<GuestAndRoomBookingScreen> createState() =>
      _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  @override
  int selectedGuest = 2;
  int selectedRoom = 1;
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Add guest and room',
      child: Column(
        children: [
          SizedBox(height: 16),
          ItemAddGuestAndRoom(
            icon: AssetHelper.guestIcon,
            initData: selectedGuest,
            title: 'Guest',
            onChanged: (value) {
              selectedGuest = value;
            },
          ),
          ItemAddGuestAndRoom(
            icon: AssetHelper.bedIcon,
            initData: 1,
            title: 'Room',
            onChanged: (value) {
              selectedRoom = value;
            },
          ),
          ButtonWidget(
            title: 'Select',
            onTap: () {
              Navigator.of(context).pop([selectedGuest, selectedRoom]);
            },
          ),
          SizedBox(height: 24),
          ButtonWidget(
            title: 'Cancel',
            onTap: () {
              Navigator.of(context).pop([]);
            },
          ),
        ],
      ),
    );
  }
}
