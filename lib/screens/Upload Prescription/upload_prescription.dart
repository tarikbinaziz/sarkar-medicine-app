
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/widgets/button_widget.dart';
import 'package:medicine_app/widgets/textfield_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../consts/strings.dart';
import 'Feature Widget/choose_camera_gallery.dart';
import 'Feature Widget/prescription_custom_button/prescription_button.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  XFile? _image;

  void selectImage() async {
    final ImagePicker _picker = ImagePicker();

    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(
          () {
        _image = image;
      },
    );
  }


    @override
  Widget build(BuildContext context) {
    final Rxn<int> selected = Rxn<int>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 95,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imgOsudKiniLogo,
          ),
        ),
        title: Text(
          prescription,
          style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.error,
              color: iconColor,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    MdiIcons.cloudUpload,
                    color: Colors.white,
                  )
                      .box
                      .color(iconColor)
                      .roundedFull
                      .padding(EdgeInsets.all(12))
                      .make(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      uploadPrescription,
                      style: TextStyle(
                          color: tittleColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                yourPrescriptionWillBeSecure,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ).box.rounded.color(mainColor).padding(EdgeInsets.all(8)).make(),
              20.heightBox,
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: bottomNavBg,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(4, 4),
                        color: bottomShadowColorFirst,
                      ),
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-4, -4),
                          color: bottomShadowColorSecond)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child:
                      _image == null?Container(): Image.file(File(_image!.path))
                     // Center(child: Text("No image",style: TextStyle(color: Colors.grey),)),
                    ),

                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        chooseCameraGallery(MdiIcons.camera, camera),
                        chooseCameraGallery(Icons.image, uploadFile).onTap(() {
                          selectImage();
                        })
                      ],
                    ),
                    10.heightBox,
                    Text(
                      writeYourRequired,
                      style: TextStyle(
                          color: darkFontGrey, fontWeight: FontWeight.w500),
                    ),
                    10.heightBox,
                    TextFormField(
                      //   controller: controller,
                      maxLines: 4,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          isCollapsed: true,
                          // hintText: hint,
                          contentPadding: EdgeInsets.all(10),
                          //  hintStyle: TextStyle(fontFamily: semibold,color: textFieldGrey),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: mainColor))),
                    ),
                    10.heightBox,
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: selected.value == 1,
                            activeColor: mainColor,
                            onChanged: (val) {
                              val ?? true
                                  ? selected.value = 1
                                  : selected.value = null;
                            },
                          ),
                        ),
                        Text(
                          iWantThis,
                          style: TextStyle(
                              color: darkFontGrey, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    10.heightBox,
                    prescriptionButton(
                        tittle: savePrescription,
                        onPress: (){
                        },
                        bgColor: mainColor,
                        textColor: Colors.white,
                        width: context.width / 1.5),
                    20.heightBox,
                    prescriptionButton(
                        tittle: prescriptionHistory,
                        bgColor: bottomNavBg,
                        textColor: mainColor,
                        width: context.width / 1.5),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
