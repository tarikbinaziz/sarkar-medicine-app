import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../../../consts/consts.dart';

Widget otcMedicine({
  String? image,
  String? title,

}) {
  return Container(
    width: 140,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                  image: AssetImage(image!),
                  fit: BoxFit.cover)),
        ),
        Expanded(
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(color: mainColor),
          ),
        ),
      ],
    ),
  ).box.roundedSM.outerShadow.margin(EdgeInsets.all(4)).make();
}
