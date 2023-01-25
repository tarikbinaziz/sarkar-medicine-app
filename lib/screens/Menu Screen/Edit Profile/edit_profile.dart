import 'package:flutter/material.dart';
import 'package:medicine_app/consts/colors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../consts/strings.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/Custom Appbar/custom_appBar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppBar(title: editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                basicInfo,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              16.heightBox,
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
                  hintText: emailHint,
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
                  label: Text(numberLabel),
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
                  hintText: newPassHint,
                  label: Text(newPassLabel),
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
                  hintText: confirmPassword,
                  label: Text(confirmPassword),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              16.heightBox,
              AppTextField(
                textFieldType: TextFieldType.ADDRESS,
                suffixIconColor: mainColor,
                decoration: InputDecoration(
                  hintText: addressHint,
                  label: Text(addressLabel),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0,bottom: 30),
                child: Center(
                    child: ourButton(
                      width: double.infinity,
                        tittle: updateProfile, textColor: white, onPress: () {})),
              )
            ],
          ),
        ),
      ),
    );
  }
}
