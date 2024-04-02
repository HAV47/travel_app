import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:travelapp/core/constans/dimention/color_palette.dart';
import 'package:travelapp/core/helpers/local_storage_helper.dart';
import 'package:travelapp/representation/screens/splash_screen.dart';
import 'package:travelapp/routes.dart';

void main() async {
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: ColorPalatte.primaryColor,
        scaffoldBackgroundColor: ColorPalatte.backgroundScaffoldColor,
        colorScheme: ColorScheme.fromSeed(seedColor: ColorPalatte.backgroundScaffoldColor),
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen()
    );
  }
}


