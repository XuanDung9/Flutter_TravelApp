import 'package:flutter/widgets.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({super.key});
  static final String routerName = '/hotels_screen';
  @override
  State<HotelsScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(child: SingleChildScrollView(child: Column()));
  }
}
