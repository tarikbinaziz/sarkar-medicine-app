

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../consts/colors.dart';

Widget customFeature(icon, String text){
  return  Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Row(
     crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        )
            .box
            .padding(EdgeInsets.all(6))
            .roundedFull
            .color(mainColor)
            .make(),

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(text),
        )
      ],
    ),
  );
}