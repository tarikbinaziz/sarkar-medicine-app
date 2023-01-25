
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';

Widget buildSpeedDial() {
  return SpeedDial(
     buttonSize: Size(50,50),
     childrenButtonSize:Size(50,50),
    child: ImageIcon(AssetImage(icChat),size: 50),
    activeIcon: Icons.close,

   // animatedIcon: AnimatedIcons.menu_close,
   // animatedIconTheme: IconThemeData(color:mainColor,size: 28.0),
    backgroundColor: mainColor.withOpacity(0.8),
    elevation: 4,
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
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(icWhatsapp,),
        ),
        backgroundColor: Colors.white,
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