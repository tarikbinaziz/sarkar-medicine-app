import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../widgets/Custom Appbar/custom_appBar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isToggled=false.obs;
    return Scaffold(
      appBar: customAppBar(title: settings),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  notification,
                  style: TextStyle(color: darkFontGrey,fontWeight: FontWeight.bold),
                ),
                Obx(()=>
                    FlutterSwitch(
                      height: 20.0,
                      width: 40.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      activeColor: mainColor,
                      value: isToggled.value,
                      onToggle: (val) {
                        isToggled.value = val;

                      },
                    ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
