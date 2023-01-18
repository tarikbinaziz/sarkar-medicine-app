import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Home%20Screen/Features%20Button/frequently_asked_medicine.dart';
import 'package:medicine_app/screens/Home%20Screen/Product%20Details/product_details.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slide_countdown/slide_countdown.dart';
import '../../consts/list.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/fab_speed_dial.dart';
import '../../widgets/icon_button_widget.dart';
import '../../widgets/textfield_widget.dart';
import 'Features Button/dealsOfTheDay.dart';
import 'Features Button/otc_medicine_container.dart';
import 'Features Button/prescription_medicine.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        elevation: 0,
        leadingWidth: 95,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset(
            imgOsudKiniLogo,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 8),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: mainColor, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(icdoctor,width: 16,height: 16,)
                  ),
                ),
                Text(
                  callDoctor,
                  style: TextStyle(color: tittleColor),
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
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.play_arrow,
                      size: 16,
                    ),
                  ),
                ),
                Text(
                  tutorial,
                  style: TextStyle(color: tittleColor),
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
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.person,
                      size: 16,
                    ),
                  ),
                ),
                Text(
                  profile,
                  style: TextStyle(color: tittleColor),
                )
              ],
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
      floatingActionButton: buildSpeedDial(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: context.width - 80,
                  child: customTextField(hint: searchMedicine)),
              5.heightBox,
              CarouselSlider.builder(
                  itemCount: bannerList.length,
                  itemBuilder: (_, index, realIndex) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        bannerList[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  options: CarouselOptions(
                      height: 140,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentPosition = index;
                        });
                      })),
              5.heightBox,
              DotsIndicator(
                dotsCount: bannerList.length,
                position: _currentPosition.toDouble(),
              ),
              24.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        width: 195,
                        child: Text(
                          banDescription,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      5.heightBox,
                      ourButton(
                          onPress: () {},
                          color: mainColor,
                          textColor: whiteColor,
                          tittle: uploadPrescription)
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        color: mainColor,
                        elevation: 6,
                        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                        child:Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(icMedicine),
                              Text(
                                requestMedicine,
                                style: TextStyle(
                                    color: Colors.white,
                                   ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    famillyNeed,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    seeAll,
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(34),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(imgBaby),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                baby,
                                style: TextStyle(color: mainColor),
                              ),
                            ),
                          ],
                        ),
                      ).box.rounded.outerShadow.margin(EdgeInsets.all(4)).make()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(34),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(imgMom),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                mom,
                                style: TextStyle(color: mainColor),
                              ),
                            ),
                          ],
                        ),
                      ).box.rounded.outerShadow.margin(EdgeInsets.all(4)).make()
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(300),
                                    bottomLeft: Radius.circular(300),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(imgAdole),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                adolescence,
                                style: TextStyle(color: mainColor),
                              ),
                            ),
                          ],
                        ),
                      ).box.rounded.outerShadow.margin(EdgeInsets.all(4)).make()
                    ],
                  ),
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    frequentlyAskedMedicineTxt,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    seeAll,
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                children: [
                  Expanded(
                    child: frequentlyAskedMedicine(
                            image: imgNapa, tittle: napa, tk: tk80, disTk: tk88)
                        .onTap(() {
                      Get.to(() => ProductDetailsScreen());
                    }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: frequentlyAskedMedicine(
                        image: imgLosectil,
                        tittle: losectil,
                        tk: tk4,
                        disTk: tk5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: frequentlyAskedMedicine(
                        image: imgAcePlus,
                        tittle: acePlus,
                        tk: tk1,
                        disTk: tk2),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    prescriptionMedicines,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    seeAll,
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                children: [
                  Expanded(
                    child: prescriptionMedicine(
                      image: imgNapa,
                      tittle: napa,
                      tk: tk80,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: prescriptionMedicine(
                      image: imgLosectil,
                      tittle: losectil,
                      tk: tk4,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: prescriptionMedicine(
                      image: imgAcePlus,
                      tittle: acePlus,
                      tk: tk1,
                    ),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dealsOfTheDay,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              24.heightBox,
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(b2),fit: BoxFit.fill)),
              ),
              24.heightBox,
              Row(
                children: [
                  Expanded(
                    child: DealsOfTheDay(
                      image: imgNapa,
                      tittle: napa,
                      tk: tk80,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DealsOfTheDay(
                      image: imgLosectil,
                      tittle: losectil,
                      tk: tk4,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DealsOfTheDay(
                      image: imgAcePlus,
                      tittle: acePlus,
                      tk: tk1,
                    ),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    otcMedicine,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    seeAll,
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              10.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      4,
                      (index) => OtcMedicine(
                          image: otcImageList[index],
                          tittle: otcDescriptionList[index])).toList(),
                ),
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    diabetisMedicine,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    seeAll,
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                children: [
                  Expanded(
                    child: prescriptionMedicine(
                      image: imgNapa,
                      tittle: napa,
                      tk: tk80,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: prescriptionMedicine(
                      image: imgLosectil,
                      tittle: losectil,
                      tk: tk4,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  prescriptionMedicine(
                    image: imgAcePlus,
                    tittle: acePlus,
                    tk: tk1,
                  ),
                ],
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    medicalEquipment,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    seeAll,
                    style: TextStyle(fontSize: 16, color: mainColor),
                  ),
                ],
              ),
              24.heightBox,
              Row(
                children: [
                  Expanded(
                    child: prescriptionMedicine(
                      image: "assets/images/m1.png",
                      tittle: "BABYLY Infrared",
                      tk: tk80,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: prescriptionMedicine(
                      image: "assets/images/m2.png",
                      tittle: "Hand Axillary...",
                      tk: tk4,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  prescriptionMedicine(
                    image: "assets/images/m1.png",
                    tittle: "BABYLY Infrared",
                    tk: tk80,
                  ),
                ],
              ),
              24.heightBox,
              Stack(
                alignment: Alignment.bottomRight,
                children: [
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
                            width: 270,
                            child: Text(
                              ambulanceDescription,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          5.heightBox,
                          ourIconButton(
                              onPress: () {},
                              color: mainColor,
                              textColor: whiteColor,
                              tittle: mobileNumber)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: context.width / 2,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              imgAmbulance,
                            ),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
