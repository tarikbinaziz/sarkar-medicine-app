
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';

Widget buildSpeedDial() {
  return SpeedDial(
    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: IconThemeData(color:mainColor,size: 28.0),
    backgroundColor: bottomNavBg,
    visible: true,
    curve: Curves.bounceInOut,
    children: [
      SpeedDialChild(
        child: Icon(Icons.call, color: Colors.white),
        backgroundColor: Colors.green,
        onTap: () => print('Pressed Read Later'),
      //  label: 'Read',
        labelStyle:
        TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        labelBackgroundColor: Colors.black,
      ),
      SpeedDialChild(
        child: Icon(MdiIcons.truckFast, color: Colors.white),
        backgroundColor: Colors.red,
        onTap: () => print('Pressed Write'),
        labelStyle:
        TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        labelBackgroundColor: Colors.black,
      ),
      SpeedDialChild(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(icMessenger,),
        ),
        backgroundColor: Colors.white,
        onTap: () => print('Pressed Code'),

      ),
    ],
  );
}