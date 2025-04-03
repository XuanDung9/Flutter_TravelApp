import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travel_app/core/constants/color_constant.dart';
import 'package:travel_app/repesentattion/widgets/app_bar_container.dart';
import 'package:travel_app/repesentattion/widgets/button_widget.dart';

class SelectDateScreen extends StatelessWidget {
  static const String RouterName = '/select_date_screeen';
  DateTime? rangeStartDate;
  DateTime? rangeEndDate;
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Selected Date',
      child: Column(
        children: [
          SizedBox(height: 48),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            selectionMode: DateRangePickerSelectionMode.range,
            monthViewSettings: DateRangePickerMonthViewSettings(
              firstDayOfWeek: 1,
            ),
            selectionColor: Colors.yellow,
            startRangeSelectionColor: Colors.yellow,
            endRangeSelectionColor: Colors.yellow,
            rangeSelectionColor: Colors.yellow.withOpacity(0.25),
            todayHighlightColor: Colors.yellow,
            toggleDaySelection: true,
            onSelectionChanged: (DateRangePickerSelectionChangedArgs arg) {
              if (arg.value is PickerDateRange) {
                rangeStartDate = arg.value.startDate;
                rangeEndDate = arg.value.endDate;
              } else {
                rangeStartDate = null;
                rangeEndDate = null;
              }
            },
          ),
          SizedBox(height: 24),
          ButtonWidget(
            title: 'Select',
            onTap: () {
              Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            },
          ),
          SizedBox(height: 24),
          ButtonWidget(
            title: 'Cancel',
            onTap: () {
              Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            },
          ),
        ],
      ),
    );
  }
}
