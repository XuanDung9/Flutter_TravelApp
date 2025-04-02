import 'package:flutter/widgets.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/repesentattion/screens/select_date_screen.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';
import 'package:travel_app/repesentattion/widgets/button_widget.dart';
import 'package:travel_app/repesentattion/widgets/item_booking_widget.dart';
import 'package:travel_app/core/extensions/date_ext.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});
  static final String routerName = '/hotel_booking_screen';
  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String? dateSelected;

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
                description: 'South Korea',
                title: 'Destination',
                onTap: () {},
              ),
              SizedBox(height: 12),
              ItemBookingWidget(
                icon: AssetHelper.calendarIcon,
                description: dateSelected ?? ' Select Date ',
                title: 'time to select',
                onTap: () async {
                  final result = await Navigator.of(
                    context,
                  ).pushNamed(SelectDateScreen.RouterName);

                  if (result != null &&
                      result is List<DateTime?> &&
                      result.length > 1) {
                    if (!result.any((element) => element == null)) {
                      dateSelected =
                          '${result[0]?.getStartDate ?? ''} - ${result[1]?.getEndDate ?? ''}';
                      setState(() {}); // Cập nhật UI
                    }
                  }
                },
              ),
              SizedBox(height: 12),
              ItemBookingWidget(
                icon: AssetHelper.bedIcon,
                description: '2 guest 1 room',
                title: ' Guest and Room',
                onTap: () {},
              ),
              SizedBox(height: 12),
              ButtonWidget(title: 'Search', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
