
import '../consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourIconButton({onPress,icon, color, textColor, String? tittle,width}) {
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
    child: ElevatedButton.icon(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: StadiumBorder()
        ),
        icon: Icon(icon,color: Colors.white,),
        label: Text(
          tittle!,
          style: TextStyle(color: textColor, fontFamily: bold),
        )),
  );
}
