import 'package:flutter/widgets.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';
import 'package:travel_app/repesentattion/widgets/button_widget.dart';
import 'package:travel_app/repesentattion/widgets/item_booking_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});
  static final String routerName = '/hotel_booking_screen';
  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel Booking',
      implementLeading: true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 38),
          child: Column(
            children: [
              SizedBox(height: 12),
              ItemBookingWidget(
                icon: AssetHelper.locationIcon,
                description: 'Destination',
                title: 'South Korea',
                onTap: () {},
              ),
              SizedBox(height: 12),
              ItemBookingWidget(
                icon: AssetHelper.calendarIcon,
                description: 'Select Date',
                title: 'time to select',
                onTap: () {},
              ),
              SizedBox(height: 12),
              ItemBookingWidget(
                icon: AssetHelper.bedIcon,
                description: 'Guest and Room',
                title: '2 guest 1 room',
                onTap: () {},
              ),
              SizedBox(height: 12),
              ButtonWidget(
                title: 'Search',
                onTap: () {
                  // Hành động khi bấm nút
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
