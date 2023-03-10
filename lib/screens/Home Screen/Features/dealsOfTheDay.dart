import 'package:velocity_x/velocity_x.dart';
import '../../../consts/consts.dart';
import 'package:flutter/material.dart';

Widget dealsOfTheDay({
  String? image,
  String? tittle,
  String? tk,
}) {
  return Container(
    width: 90,
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 90,
          height: 60,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.fill)),
        ),
        Spacer(),

        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: darkFontGrey, fontWeight: FontWeight.w500),
              ),
              5.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.center,
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
                    tk80,
                    style: TextStyle(color: redColorMain),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ).box.topRounded().outerShadow.topRounded().margin(EdgeInsets.all(2)).make();
}
