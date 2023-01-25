import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/images.dart';

Widget seeAllItems({
  String? image,
  String? tittle,
  String? tk,
}) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110,
          height: 70,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.fill)),
        ),
        5.heightBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tittle!,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: darkFontGrey, fontWeight: FontWeight.w500),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageIcon(
                  AssetImage(icTakaSign),
                  size: 12,
                  color: redColorMain,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  tk!,
                  style: TextStyle(
                    color: redColorMain,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
