import 'package:flutter/material.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';

AppBar customAppBar({title,list}){
  return  AppBar(
    backgroundColor: Colors.white,
    titleSpacing: -10,
    elevation: 0,
   // centerTitle: true,
    leading: BackButton(
      color: titleColor,
    ),
    // leadingWidth: 95,
    // title:  Text(
    //   myCart,
    //   style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
    // ),
    title: Row(
      children: [
         Container(
           height: 60,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgOsudKiniFullLogo), fit: BoxFit.cover)),
        ),
    Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Text(
          title,
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
    ),
      ],
    ),
    actions:list,
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