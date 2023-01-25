import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../widgets/Custom Appbar/custom_appBar.dart';
import '../../../widgets/icon_button_widget.dart';
import '../../../widgets/url_launcher.dart';

class SupportCenterScreen extends StatelessWidget {
  const SupportCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const number = "+8801325780405";

    return Scaffold(
      appBar: customAppBar(title: supportCenter),
      body: Column(
        children: [
          // Container(
          //   width: 280,
          //   height: 165,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage(imgSupport), fit: BoxFit.fill)),
          // )
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(imgSupport,width: 250,),
          )),
          40.heightBox,
          ourIconButton(
            icon: MdiIcons.phone,
              onPress: () =>  launchDialer(number),
              color: mainColor,
              textColor: Colors.white,
              tittle: mobileNumber,
              width: ContextExtensionss(context).width/2
          ),
          16.heightBox,
          ourIconButton(
            icon: MdiIcons.email,
              onPress: () =>  launchMail(),
              color: mainColor,
              textColor: Colors.white,
              tittle: mail,
              width: ContextExtensionss(context).width/2
          ),

        ],
      ),
    );
  }
}
