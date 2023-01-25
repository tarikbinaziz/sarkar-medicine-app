import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Menu%20Screen/Add%20Address/add_address.dart';
import 'package:medicine_app/widgets/button_widget.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../widgets/Custom Appbar/custom_appBar.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: myAddress),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ourButton(tittle: addAddress,onPress: ()=>AddAddress().launch(context)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset(imgNoData),

      ],),
    );
  }
}
