import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/core/constans/dimention/dimention_constants.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/core/helpers/image_helper.dart';

class DetailsHotelScreen extends StatefulWidget {
  const DetailsHotelScreen({super.key});

  static const String routeName = '/details_hotel_screen';

  @override
  State<DetailsHotelScreen> createState() => _DetailsHotelScreenState();
}

class _DetailsHotelScreenState extends State<DetailsHotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageHelper.LoadFromAsset(AssetHelper.hotelDetails,
                fit: BoxFit.fill),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.8,
            minChildSize: 0.3,
            builder: (context, scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kMediumPadding * 2),
                    topRight: Radius.circular(kMediumPadding * 2),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: kDefaultPadding),
                      child: Container(
                        height: 5,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(kItemPadding),
                          ),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: kMediumPadding),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
