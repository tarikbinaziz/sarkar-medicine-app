import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widgets/button_widget.dart';
import '../../../widgets/Custom Appbar/custom_appBar.dart';
import '../Add Address/my_address.dart';

class ComplainSuggestionScreen extends StatelessWidget {
  const ComplainSuggestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: submitComplain),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: ourButton(tittle: submit, onPress: () {}),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            10.heightBox,
            Text("Review",style: TextStyle(color: titleColor,fontSize: 20),),
            10.heightBox,
            RatingBarWidget(
              activeColor: golden,
              rating: 0,
              onRatingChanged: (aRating) {
              },
            ),
            30.heightBox,
            AppTextField(
              textFieldType: TextFieldType.NAME,
              decoration: InputDecoration(
                hintText: titleHint,
                label: Text(titleLabel),
                hintStyle: TextStyle(color: textFieldGrey),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainColor)),
              ),
            ),
            16.heightBox,
            AppTextField(
              textFieldType: TextFieldType.MULTILINE,
              decoration: InputDecoration(
                hintText: descriptionHint,
                label: Text(descriptionLabel),
                hintStyle: TextStyle(color: textFieldGrey),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainColor)),
              ),
            ),
            40.heightBox,
            ourButton(tittle: submit, onPress: () {},width: double.infinity)
          ],
        ),
      ),
    );
  }
}
