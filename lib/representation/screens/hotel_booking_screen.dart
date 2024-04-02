import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/representation/widgets/app_bar_container.dart';
import 'package:travelapp/representation/widgets/button_widget.dart';
import 'package:travelapp/representation/widgets/item_booking_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static const String routeName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel Booking',
      paddingContent: EdgeInsets.all(kMediumPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingWidget(
                icon: AssetHelper.iconLocation,
                title: 'Destination',
                description: 'South Korea'),
            SizedBox(
              height: kMediumPadding,
            ),
            ItemBookingWidget(
                icon: AssetHelper.iconCelender,
                title: 'Select Date',
                description: '13 Feb - 18 Feb 2021'),
            SizedBox(
              height: kMediumPadding,
            ),
            ItemBookingWidget(
                icon: AssetHelper.iconBed,
                title: 'Guest and Room',
                description: '2 Guest, 1 Room'),
            SizedBox(height: kMediumPadding,),
            ButtonWidget(
              title: 'Search',
              ontap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
