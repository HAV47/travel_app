import 'package:flutter/cupertino.dart';
import 'package:travelapp/representation/screens/details_hotel_screen.dart';
import 'package:travelapp/representation/screens/guest_and_room_booking_screen.dart';
import 'package:travelapp/representation/screens/hotel_booking_screen.dart';
import 'package:travelapp/representation/screens/hotel_screen.dart';
import 'package:travelapp/representation/screens/intro_screen.dart';
import 'package:travelapp/representation/screens/main_app.dart';
import 'package:travelapp/representation/screens/select_date_screen.dart';
import 'package:travelapp/representation/screens/splash_screen.dart';

final Map<String,WidgetBuilder>routes = {
  SplashScreen.routeName:(context) => const SplashScreen(),
  IntroScreen.routeName:(context) => const IntroScreen(),
  MainApp.routeName:(context) => const MainApp(),
  HotelScreen.routeName:(context) => const HotelScreen(),
  HotelBookingScreen.routeName:(context) =>   HotelBookingScreen(),
  SelectDateScreen.routeName:(context) =>  SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) => const GuestAndRoomBookingScreen(),
  DetailsHotelScreen.routeName: (context) => const DetailsHotelScreen(),
};