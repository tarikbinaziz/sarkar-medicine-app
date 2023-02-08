import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Auth/signin.dart';
import 'package:medicine_app/screens/Menu%20Screen/Add%20Address/my_address.dart';
import 'package:medicine_app/screens/Menu%20Screen/Feature%20Custom%20Widget/feature_style.dart';
import 'package:medicine_app/screens/Menu%20Screen/Order%20Details/order_details.dart';
import 'package:medicine_app/screens/Menu%20Screen/Support%20Center/support_center.dart';
import 'package:medicine_app/screens/Menu%20Screen/Wishlist/wishlist.dart';
import 'package:medicine_app/widgets/Custom%20Appbar/custom_appBar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Complain Suggestion/complain_suggestion.dart';
import 'Edit Profile/edit_profile.dart';
import 'Settings/settings.dart';
import 'Term Condition/term_condition.dart';
import 'Truck Order/truck_order.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: userProfile, list: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.share,
            color: titleColor,
          ),
        )
      ]),
      // AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: true,
      //   leadingWidth: 100,
      //   leading: Container(
      //     width: 120,
      //     decoration: BoxDecoration(
      //         image: DecorationImage(
      //             image: AssetImage(imgOsudKiniFullLogo), fit: BoxFit.cover)),
      //   ),
      //   title: Text(
      //     userProfile,
      //     style: TextStyle(color: titleColor),
      //   ),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //           colors: <Color>[Colors.white, mainColor.withOpacity(0.7)]),
      //     ),
      //   ),
      // ),
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
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
                customFeature(MdiIcons.shopping, myOrder)
                    .onTap(() => OrderDetailsScreen().launch(context)),
                customFeature(Icons.location_on_outlined, myAdress)
                    .onTap(() => MyAddressScreen().launch(context)),
                customFeature(MdiIcons.heart, wishlist)
                    .onTap(() => WishlistScreen().launch(context)),
                customFeature(Icons.add_location_alt_outlined, trackOrder)
                    .onTap(() => TrackOrderScreen().launch(context)),
                customFeature(MdiIcons.accountEdit, editProfile)
                    .onTap(() => EditProfileScreen().launch(context)),
                customFeature(MdiIcons.faceAgent, supportCenter)
                    .onTap(() => SupportCenterScreen().launch(context)),
                customFeature(MdiIcons.noteAlert, complainSuggestion)
                    .onTap(() => ComplainSuggestionScreen().launch(context)),
                customFeature(Icons.settings, settings)
                    .onTap(() => SettingsScreen().launch(context)),
                customFeature(Icons.book_online, termsCondition)
                    .onTap(() => TermCondition().launch(context)),
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
                ).onTap(() => SigninScreen().launch(context)),
                20.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
