import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import '../../../consts/consts.dart';
Widget familyNeeds({
  String? image,
  String? tittle,
}) {
  return Container(
    width: 83,
    padding: EdgeInsets.all( 6),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          width: 65,
          height: 60,
          decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage(image!), fit: BoxFit.fill)),
        ),
        4.heightBox,
        Text(
          tittle!,
          overflow: TextOverflow.ellipsis,
          style:
          TextStyle(color: darkFontGrey, fontWeight: FontWeight.w500),
        ),
      ],
    ),

  ).box.topRounded().outerShadow.margin(EdgeInsets.all(2)).rounded.make();

}
