
import 'package:flutter/material.dart';

import '../consts/consts.dart';

ElevatedButton ourButton({onPress, color, textColor, String? tittle}) {
  return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(primary: color,
          shape: StadiumBorder()
      ),
      child: Text(
        tittle!,
        style: TextStyle(color: textColor, fontFamily: bold),
      ));
}
