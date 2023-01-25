
import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Auth/signin.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/Custom Appbar/custom_appbar_without_back.dart';
import '../../widgets/button_widget.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppBarWithoutBackButton(title: forgotPassword),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    forPassword,
                    style: TextStyle(color: titleColor,fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(enterEmailRecover,style: TextStyle(color: darkFontGrey),),
                const SizedBox(
                  height: 16,
                ),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  suffixIconColor: mainColor,
                  decoration: InputDecoration(
                    hintText: emailHintSignUp,
                    hintStyle: TextStyle(color: textFieldGrey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ourButton(tittle: resetPassword,textColor: white,onPress: (){},width: double.infinity),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                   backToHome,
                    style: TextStyle(color: mainColor,fontWeight: FontWeight.bold),
                    // style: titleColor,
                  ),
                )
                 .onTap(() => const SigninScreen().launch(context)),

              ],
            ),
          ),
        ),
      ).box.roundedSM.padding(EdgeInsets.all(20)).margin(EdgeInsets.all(20)).white.shadowSm.makeCentered(),
    );
  }
}
