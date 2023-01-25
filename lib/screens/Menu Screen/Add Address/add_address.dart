import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Menu%20Screen/Add%20Address/my_address.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widgets/button_widget.dart';
import '../../../widgets/Custom Appbar/custom_appBar.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isToggled=false.obs;
    return Scaffold(
      appBar: customAppBar(title: addNewAddress),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ourButton(tittle: save,onPress: ()=>MyAddressScreen().launch(context)),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  hintText: cityTownHint,
                  label: Text(cityTownLabel),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.MULTILINE,
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Use as Billing address',
                    style: TextStyle(color: darkFontGrey),
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
              const SizedBox(
                height: 24,
              ),

            ],
          ),
        ),
      ),

    );
  }
}
