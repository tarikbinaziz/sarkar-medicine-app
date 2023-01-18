import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../../../consts/consts.dart';

Widget OtcMedicine({
  String? image,
  String? tittle,
  String? tk,

}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      // borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20), topRight: Radius.circular(20))
    ),
    child: Column(
      children: [
        Container(
          width: 90,
          height: 60,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage(image!), fit: BoxFit.fill)),
        ),
        Spacer(),
        Text(
          tittle!,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style:
          TextStyle(color: darkFontGrey, fontWeight: FontWeight.bold),
        ),
        5.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ImageIcon(
                AssetImage(icTakaSign),
                size: 16,
                color: redColorMain,
              ),
            ),
            Text(
              tk80,
              style: TextStyle(color: redColorMain,fontWeight: FontWeight.bold),
            ),

          ],
        ),
        5.heightBox,
      ],
    ),
  ).box.width(125).height(180).margin(EdgeInsets.all(4)).padding(EdgeInsets.all(4)).roundedSM.outerShadowSm.color(Colors.white).make();
}
