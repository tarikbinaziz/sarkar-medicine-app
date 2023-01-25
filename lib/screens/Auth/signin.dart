
import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Auth/signup.dart';
import 'package:medicine_app/screens/Home%20Screen/mt_home_bottom_nav.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/Custom Appbar/custom_appbar_without_back.dart';
import '../../widgets/button_widget.dart';
import 'forgot_password.dart';


class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppBarWithoutBackButton(title: login),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    loginYourAccount,
                    style: TextStyle(color: titleColor,fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(mobileOrEmail,style: TextStyle(color: darkFontGrey),),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(
                  textFieldType: TextFieldType.OTHER,
                  suffixIconColor: mainColor,
                  decoration: InputDecoration(
                    hintText: mobileOrEmailHint,
                    hintStyle: TextStyle(color: textFieldGrey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(password,style: TextStyle(color: darkFontGrey),),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  suffixIconColor: mainColor,
                  decoration: InputDecoration(
                    hintText: passwordHint,
                    hintStyle: TextStyle(color: textFieldGrey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor)),
                  ),
                ),
                40.heightBox,
                ourButton(tittle: login,textColor: white,onPress: (){HomeBottomNavBarScreen().launch(context);},width: double.infinity),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: dontHaveAc,
                        style: TextStyle(color: darkFontGrey.withOpacity(0.7)),
                        children: [
                          TextSpan(
                              text: signup, style: TextStyle(color: mainColor,fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ).onTap(() => SignUpScreen().launch(context),),
                20.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    forgotPassword,
                   style: TextStyle(color: mainColor,fontWeight: FontWeight.bold),
                   // style: titleColor,
                  ),
                )
                    .onTap(() => const ForgotPasswordScreen().launch(context)),


               
              ],
            ),
          ),
        ),
      ).box.roundedSM.padding(EdgeInsets.all(20)).margin(EdgeInsets.all(20)).white.shadowSm.makeCentered(),
    );
  }
}
