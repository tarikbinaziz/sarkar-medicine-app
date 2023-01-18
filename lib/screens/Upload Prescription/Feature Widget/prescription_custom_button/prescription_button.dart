
import 'package:flutter/material.dart';
import '../../../../consts/colors.dart';


Widget prescriptionButton({onPress, color, textColor, String? tittle,width,bgColor}) {
  return GestureDetector(
    onTap:onPress ,
    child: Container(
      width: width,
     clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color:bgColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(4, 4),
              color: bottomShadowColorFirst,
            ),
            BoxShadow(
                blurRadius: 10,
                offset: Offset(-4, -4),
                color: bottomShadowColorSecond
            )
          ]
      ),
      child: ElevatedButton(
       // clipBehavior: Clip.antiAlias,
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
          backgroundColor: MaterialStatePropertyAll(bgColor)
        ),
        onPressed: () {  },
        child: Center(
          child: Text(
            tittle!,
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
