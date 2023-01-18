import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import '../../../consts/consts.dart';

Widget frequentlyAskedMedicine({
  String? image,
  String? tittle,
  String? tk,
  String? disTk,
}) {
  return Container(
    width: 105,
    padding: EdgeInsets.only(top: 6,bottom: 6),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          width: 90,
          height: 60,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.fill)),
        ),
        5.heightBox,
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
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
                  SizedBox(width: 5,),
                  Text(
                    tk80,
                    style: TextStyle(color: redColorMain,),
                  ),
                  SizedBox(width: 10,),
                  ImageIcon(
                    AssetImage(icTakaSign),
                    size: 8,
                  ),
                  Text(
                    tk80,
                    style: TextStyle(color: darkFontGrey, decoration: TextDecoration.lineThrough),
                  ),
                    ],
                  )
                ],
              ),
        )
          ],
        ),

  ).box.topRounded().outerShadowSm.rounded.make();

}
