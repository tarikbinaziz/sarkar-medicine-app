
import 'package:flutter/material.dart';

import '../consts/consts.dart';

Widget ourButton({onPress, color, textColor, String? tittle,width}) {
  return Container(
    height: 35,
    width:width ,
    decoration:  ShapeDecoration(
      shape: StadiumBorder(),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [mainColor, titleColor],
      ),
    ),

    child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: StadiumBorder()
        ),
        child: Text(
          tittle!,
          style: TextStyle(color: textColor, fontFamily: bold),
        )),
  );
}
