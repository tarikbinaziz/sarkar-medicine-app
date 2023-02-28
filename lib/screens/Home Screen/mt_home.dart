import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Home%20Screen/See%20All/see_all.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slide_countdown/slide_countdown.dart';
import '../../consts/list.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/fab_speed_dial.dart';
import '../../widgets/icon_button_widget.dart';
import '../../widgets/url_launcher.dart';
import 'Baby/baby.dart';
import 'Features/dealsOfTheDay.dart';
import 'Features/diabetes_medicine.dart';
import 'Features/familly_needs.dart';
import 'Features/frequently_asked_medicine.dart';
import 'Features/medical_equipment.dart';
import 'Features/otc_medicine_container.dart';
import 'Features/prescription_medicine.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final number = "+8801325780405";
  var _currentPosition = 0;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
  var defaultDuration = Duration(days: 2, hours: 2, minutes: 30);
  var defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        titleSpacing: 0.0,
        elevation: 0,
       // leadingWidth: 116,
        title:Image.asset(imgOsudKiniFullLogo,width: 110,),
        // Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage(imgOsudKiniFullLogo),
        //           fit: BoxFit.fitWidth)),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 5),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        icdoctor,
                        width: 16,
                        height: 16,
                      )),
                ),
                Text(
                  callDoctor,
                  style: TextStyle(color: titleColor, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 8),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: mainColor, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.play_arrow,
                      size: 16,
                    ),
                  ),
                ),
                Text(
                  tutorial,
                  style: TextStyle(color: titleColor, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 8),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: mainColor, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.person,
                      size: 16,
                    ),
                  ),
                ),
                Text(
                  profile,
                  style: TextStyle(color: titleColor, fontSize: 12),
                )
              ],
            ),
          ).onTap(() => MenuScreen().launch(context)),
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
      floatingActionButton: buildSpeedDial(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      hintText: searchMedicine,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintStyle: TextStyle(color: textFieldGrey),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainColor),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainColor),
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(
                        FeatherIcons.search,
                      )),
                ),
                24.heightBox,
                CarouselSlider.builder(
                    itemCount: bannerList.length,
                    itemBuilder: (_, index, realIndex) {
                      return SizedBox(
                      
                        child: Image.asset(
                          bannerList[index],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 16/6,
                     //   enlargeCenterPage: true,
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentPosition = index;
                          });
                        })),
                24.heightBox,
                Center(
                  child: DotsIndicator(
                    dotsCount: bannerList.length,
                    position: _currentPosition.toDouble(),
                  ),
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          uploadPrescription,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        5.heightBox,
                        SizedBox(
                          width: ContextExtensions(context).width() / 1.7,
                          child: Text(
                            banDescription,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        10.heightBox,
                        ourButton(
                            width: ContextExtensions(context).width() / 1.7,
                            onPress: () {},
                            color: mainColor,
                            textColor: white,
                            tittle: uploadPrescription)
                      ],
                    ),
                    SizedBox(
                      height: 110,
                      width: 100,
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: mainColor,
                        elevation: 6,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(icMedicine),
                            Text(
                              requestMedicine,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      frequentlyAskedMedicineTxt,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .roundedSM
                        .padding(EdgeInsets.all(4))
                        .make(),
                  ],
                ),
                24.heightBox,
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                  children: List.generate(
                      9,
                      (index) => frequentlyAskedMedicine(
                          image: frequentlyAskedMedicineImgList[index],
                          tittle: frequentlyAskedMedicineTitleList[index],
                          tk: tk8)),
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      prescriptionMedicines,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .padding(EdgeInsets.all(4))
                        .roundedSM
                        .make(),
                  ],
                ),
                24.heightBox,
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                  children: List.generate(
                      9,
                      (index) => prescriptionMedicine(
                          image: frequentlyAskedMedicineImgList[index],
                          tittle: frequentlyAskedMedicineTitleList[index],
                          tk: tk8)),
                ),
                24.heightBox,
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(b2), fit: BoxFit.fill)),
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dealsOfTheDayTxt,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    SlideCountdownSeparated(
                      decoration: BoxDecoration(color: Colors.blue),
                      duration: defaultDuration,
                    ),
                    Spacer(),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .padding(EdgeInsets.all(4))
                        .roundedSM
                        .make(),
                  ],
                ),
                24.heightBox,
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                  children: List.generate(
                      9,
                      (index) => dealsOfTheDay(
                          image: frequentlyAskedMedicineImgList[index],
                          tittle: frequentlyAskedMedicineTitleList[index],
                          tk: tk8)),
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      otcMedicineTxt,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .padding(EdgeInsets.all(4))
                        .roundedSM
                        .make(),
                  ],
                ),
                16.heightBox,
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                  children: List.generate(
                      9,
                      (index) => otcMedicine(
                          image: frequentlyAskedMedicineImgList[index],
                          tittle: frequentlyAskedMedicineTitleList[index],
                          tk: tk8)),
                ),
                16.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      diabetisMedicine,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .padding(EdgeInsets.all(4))
                        .roundedSM
                        .make(),
                  ],
                ),
                24.heightBox,
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                  children: List.generate(
                      9,
                      (index) => diabetesMedicine(
                          image: frequentlyAskedMedicineImgList[index],
                          tittle: frequentlyAskedMedicineTitleList[index],
                          tk: tk8)),
                ),
                24.heightBox,
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(b2), fit: BoxFit.fill)),
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      medicalEquipment,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .padding(EdgeInsets.all(4))
                        .roundedSM
                        .make(),
                  ],
                ),
                24.heightBox,
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                  children: List.generate(
                      9,
                      (index) => medicalEquipement(
                          image: frequentlyAskedMedicineImgList[index],
                          tittle: frequentlyAskedMedicineTitleList[index],
                          tk: tk8)),
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      familyNeed,
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(color: white),
                    )
                        .onTap(() => SeeAllScreen().launch(context))
                        .box
                        .color(mainColor)
                        .padding(EdgeInsets.all(4))
                        .roundedSM
                        .make(),
                  ],
                ),
                24.heightBox,
                HorizontalList(
                  runSpacing: 0.0,
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  itemCount: familyNeedTitleList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return familyNeeds(
                      image: familyNeedImageList[index],
                      tittle: familyNeedTitleList[index],
                    ).onTap(()=>index==0?BabyProductScreen().launch(context):null);
                  },
                ),
                24.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ambulanceService,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        5.heightBox,
                        SizedBox(
                          width: ContextExtensionss(context).width * 0.6,
                          child: Text(
                            ambulanceDescription,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        10.heightBox,
                        ourIconButton(
                            icon: MdiIcons.phone,
                            onPress: () => launchDialer(number),
                            color: mainColor,
                            textColor: white,
                            tittle: mobileNumber,
                            width: ContextExtensions(context).width() / 2)
                      ],
                    ),
                    //  Spacer(),
                    Container(
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                imgAmbulance,
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                24.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
