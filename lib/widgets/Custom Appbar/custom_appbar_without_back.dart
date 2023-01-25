import 'package:flutter/material.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';

AppBar customAppBarWithoutBackButton({title}){
  return  AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leadingWidth: 100,
    // centerTitle: true,
    leading:Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgOsudKiniFullLogo), fit: BoxFit.cover)),
    ),

    title: Text(
      title,
      style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.white, mainColor.withOpacity(0.7)]),
      ),
    ),
  );
}