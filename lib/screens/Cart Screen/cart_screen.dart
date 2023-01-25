import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/images.dart';
import '../../consts/strings.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int? selectedRadioTile;
  int? selectedRadio;
  int count = 0;
  int count1 = 0;
  int count2 = 0;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 100,
        leading: Container(
          width: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgOsudKiniFullLogo), fit: BoxFit.cover)),
        ),
        title: const Text(
          myCart,
          style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: iconColor, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(
                Icons.person,
                size: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: iconColor, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Icon(
                Icons.notifications_active,
                size: 16,
              ),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.white, mainColor.withOpacity(0.7)]),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 10,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: Image.asset(imgNapa),
            title: Text(napa),
            subtitle: Text(tk7),
            shape: OutlineInputBorder(borderSide: BorderSide(color: textFieldGrey)),

          ),
        );
      }),
    );
  }
}
