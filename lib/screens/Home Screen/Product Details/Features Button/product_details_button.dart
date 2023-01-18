
import 'package:flutter/material.dart';

import '../../../../consts/styles.dart';


ElevatedButton productDetailsButton({onPress, color, textColor, String? tittle}) {
  return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomRight: Radius.circular(16))
          )
      ),
      child: Text(
        tittle!,
        style: TextStyle(color: textColor,fontWeight: FontWeight.bold),
      ));
}
