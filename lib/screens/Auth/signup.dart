import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Auth/signin.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/strings.dart';
import '../../widgets/Custom Appbar/custom_appbar_without_back.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isCheck=false.obs;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppBarWithoutBackButton(title: signup),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                createYourAccount,
                style: TextStyle(
                    color: titleColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  hintText: nameHint,
                  label: Text(nameLabel),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              16.heightBox,
              AppTextField(
                textFieldType: TextFieldType.EMAIL,
                suffixIconColor: mainColor,
                decoration: InputDecoration(
                  hintText: emailHintSignUp,
                  label: Text(emailLabel),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              16.heightBox,
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: InputDecoration(
                  hintText: numberHint,
                  //  label: Text(numberLabel),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      8.widthBox,
                      Image.asset(
                        imgBdFlag,
                        width: 40,
                      ),
                      8.widthBox,
                      Text("+880"),
                      4.widthBox,
                      Container(
                        width: 1, // Thickness
                        height: 40,
                        color: Colors.grey,
                      ),
                      16.widthBox,
                    ],
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 30),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              16.heightBox,
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                suffixIconColor: mainColor,
                decoration: InputDecoration(
                  hintText: passwordHintSignUp,
                  label: Text(password),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              16.heightBox,
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                suffixIconColor: mainColor,
                decoration: InputDecoration(
                  hintText: passwordHintSignUp,
                  label: Text(confirmPassword),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
               // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(()=>
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                      value: isCheck.value,
                      onChanged: (val) {
                        isCheck.value = val! ;

                      },
                      side: BorderSide(color: darkFontGrey),
                      checkColor: Colors.white,
                      activeColor: mainColor,
                    ),
                  ),
                  SizedBox(width: 10,),
                  // RichText(
                  //   textAlign: TextAlign.start,
                  //   text: TextSpan(
                  //       text: "I have read and agree to the ",
                  //       style: TextStyle(color: darkFontGrey),
                  //       children: [
                  //         TextSpan(
                  //             text: "privacy policy",
                  //             style: TextStyle(color: mainColor)),
                  //         TextSpan(
                  //             text: " &", style: TextStyle(color: titleColor)),
                  //         TextSpan(
                  //             text: "\nTermes & Conditions",
                  //             style: TextStyle(color: mainColor)),
                  //       ]),
                  // )
                  Flexible(child: Text(bySigninUp,overflow: TextOverflow.clip,style: TextStyle(color: darkFontGrey.withOpacity(0.7) ),))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: darkFontGrey),
                    children: [
                      TextSpan(
                          text: login, style: TextStyle(color: mainColor,fontWeight: FontWeight.bold)),
                    ]),
              ).onTap(() => SigninScreen().launch(context))
            ],
          ),
        ),
      )      .box.roundedSM.padding(EdgeInsets.all(20)).margin(EdgeInsets.all(20)).white.shadowSm.makeCentered(),

    );
  }
}
