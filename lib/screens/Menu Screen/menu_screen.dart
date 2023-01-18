import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Menu%20Screen/Feature%20Custom%20Widget/feature_style.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 95,
        leading: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Image.asset(
            imgOsudKiniLogo,
          ),
        ),
        title: Text(
          userProfile,
          style: TextStyle(color: tittleColor),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.white, mainColor.withOpacity(0.7)]),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgProfile), fit: BoxFit.fill)),
                  ),
                ),
                5.heightBox,
                Text(
                  rakib,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                10.heightBox,
                ToggleSwitch(
                  minWidth: 55.0,
                  minHeight: 25,
                  cornerRadius: 20.0,
                  activeBgColors: [
                    [bottomNavBg],
                    [bottomNavBg]
                  ],
                  activeFgColor: mainColor,
                  inactiveBgColor: lightGrey,
                  inactiveFgColor: darkFontGrey.withOpacity(0.4),
                  // initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: [eng, bangla],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                10.heightBox,
                Divider(
                  thickness: 1,
                  endIndent: 50,
                  indent: 50,
                ),
                24.heightBox,
                customFeature(MdiIcons.shopping, myOrder),
                customFeature(Icons.location_on_outlined, myAdress),
                customFeature(MdiIcons.heart, myAdress),
                customFeature(Icons.add_location_alt_outlined, truckOrder),
                customFeature(MdiIcons.accountEdit, truckOrder),
                customFeature(MdiIcons.faceAgent, supportCenter),
                customFeature(MdiIcons.noteAlert, complainSuggestion),
                customFeature(Icons.settings, settings),
                customFeature(Icons.book_online, termsCondition),
                10.heightBox,
                Divider(
                  thickness: 1,
                  endIndent: 50,
                  indent: 50,
                ),
                10.heightBox,
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    )
                        .box
                        .padding(EdgeInsets.all(6))
                        .roundedFull
                        .color(redColorMain)
                        .make(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Center(child: Text(logOut)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
