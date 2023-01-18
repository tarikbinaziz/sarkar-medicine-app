

import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../consts/colors.dart';
import '../../../consts/strings.dart';

Widget chooseCameraGallery(icon, String text){
  return  Column(children: [
    Icon(icon,color: fontGrey,),
    Text(
      text,
      style:
      TextStyle(color: fontGrey, ),
    ),
  ],).box.width(100).roundedLg.white.padding(EdgeInsets.all(10)).border(color: mainColor).make();
}