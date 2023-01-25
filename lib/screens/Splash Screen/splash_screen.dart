import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Auth/signin.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 3),
        () => SigninScreen().launch(context,isNewTask: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(imgOsudKiniFullLogo,width: 192,),
            // const Spacer(),
            // Text(
            //   "version",
            //   style: TextStyle(fontWeight: FontWeight.w400, color: titleColor),
            // ),
            // Text(
            //   "1.0.0",
            //   style: TextStyle(fontWeight: FontWeight.w700, color: mainColor),
            // ),
          ],
        ),
      ),
    );
  }
}
