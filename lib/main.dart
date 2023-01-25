import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Auth/signin.dart';
import 'package:medicine_app/screens/Home%20Screen/mt_home_bottom_nav.dart';
import 'package:medicine_app/screens/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //Remove Status Bar..
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply())),
      home: SplashScreen(),
      //HomeBottomNavBarScreen(),
    );
  }
}


