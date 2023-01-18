
import '../consts/consts.dart';
import 'package:flutter/material.dart';

ElevatedButton ourIconButton({onPress, color, textColor, String? tittle}) {
  return ElevatedButton.icon(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(primary: color,
          shape: StadiumBorder()
      ),
      icon: Icon(Icons.call,color: Colors.white,),
      label: Text(
        tittle!,
        style: TextStyle(color: textColor, fontFamily: bold),
      ));
}
