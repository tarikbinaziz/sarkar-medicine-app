import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine_app/consts/colors.dart';
import 'package:medicine_app/screens/Home%20Screen/Product%20Details/Features%20Button/product_details_button.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../consts/images.dart';
import '../../../consts/strings.dart';
import 'Features Button/product_show_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int? selectedRadioTile;
  int? selectedRadio;
  int count=0; int count1=0; int count2=0;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 95,
        leading: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Image.asset(
            imgOsudKiniLogo,
          ),
        ),
        title:  Text(
          myCart,
          style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.asset(
                  imgNapa,
                  width: context.width / 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    price,
                    style: TextStyle(color: tittleColor, fontWeight: FontWeight.w500),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(
                              icTakaSign,
                            ),
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            tk07,
                            style: TextStyle(color: minusIconColor),
                          ),
                        ],
                      ),
                    Text(
                      p1,
                      style: TextStyle(color: minusIconColor),
                    ),

                  ],).box.border(color: textFieldGrey).padding(EdgeInsets.all(4)).margin(EdgeInsets.all(4)).make(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(
                              icTakaSign,
                            ),
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            tk760,
                            style: TextStyle(color: minusIconColor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            strip1,
                            style: TextStyle(color: minusIconColor),
                          ),
                          Text(
                            p10,
                            style: TextStyle(color: minusIconColor),
                          ),
                        ],
                      ),

                  ],).box.border(color: textFieldGrey).padding(EdgeInsets.all(4)).margin(EdgeInsets.all(4)).make(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(
                              icTakaSign,
                            ),
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            tk387,
                            style: TextStyle(color: minusIconColor),
                          ),
                        ],
                      ),
                       Row(
                        children: [
                          Text(
                            box1,
                            style: TextStyle(color: minusIconColor),
                          ),
                          Text(
                            strip51,
                            style: TextStyle(color: minusIconColor),
                          ),
                        ],
                      ),

                  ],).box.border(color: textFieldGrey).padding(EdgeInsets.all(4)).margin(EdgeInsets.all(4)).make()


                ],)
              ],),
              10.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageIcon(
                    AssetImage(
                      icTakaSign,
                    ),
                    size: 12,
                    color: tittleColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    tk7,
                    style: TextStyle(
                        color: tittleColor, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ImageIcon(
                      AssetImage(
                        icTakaSign,
                      ),
                      size: 8,
                      color: minusIconColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      tk8,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    off5,
                    style: TextStyle(color: Colors.white),
                  )
                      .box
                      .color(mainColor)
                      .roundedSM
                      .padding(EdgeInsets.all(6))
                      .make(),
                ],
              ),
               Text(
                cartNapa,
                style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
              ),
              Text(
                paracetamol500,
                style: TextStyle(color: tittleColor, fontWeight: FontWeight.w500),
              ),
              Text(
                beximcoPharmaLtd,
                style: TextStyle(color: tittleColor, fontWeight: FontWeight.w500),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Icon(Icons.arrow_drop_down),
              //     Text(
              //       priceDetails,
              //       style: TextStyle(color: minusIconColor),
              //     ),
              //
              //   ],
              // ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(child: productDetailsButton(onPress: (){},color: mainColor,tittle: buyNow,textColor: whiteColor)),
                  SizedBox(width: 20,),
                  Expanded(child: productDetailsButton(onPress: (){},color: redColorMain,tittle: addToCart,textColor: whiteColor)),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                offerDetails,
                style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
              ).box.border(color: textFieldGrey).padding(EdgeInsets.all(20)).make(),
              SizedBox(
                height: 24,
              ),

              Text(
                alternativeBrand,
                style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: alternativeProductShowButton(
                      image: imgNapa,
                      tittle: napa,
                      tk: tk80,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: alternativeProductShowButton(
                      image: imgLosectil,
                      tittle: losectil,
                      tk: tk4,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: alternativeProductShowButton(
                      image: imgAcePlus,
                      tittle: acePlus,
                      tk: tk1,
                    ),
                  ),
                ],
              ),

              // Divider(
              //   indent: 20,
              //   endIndent: 20,
              // ),
              // RadioListTile(
              //   value: 1,
              //   groupValue: selectedRadio,
              //   contentPadding: EdgeInsets.zero,
              //   visualDensity: VisualDensity(vertical: -4),
              //
              //   title: Text(
              //     p1,
              //     style: TextStyle(color: minusIconColor),
              //   ),
              //   subtitle: Row(
              //     children: [
              //       ImageIcon(
              //         AssetImage(
              //           icTakaSign,
              //         ),
              //         size: 12,
              //       ),
              //       SizedBox(
              //         width: 5,
              //       ),
              //       Text(
              //         tk07,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //     ],
              //   ),
              //   onChanged: (val) {
              //     setSelectedRadio(val!);
              //   },
              //   activeColor: tittleColor,
              //   secondary: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //           padding: EdgeInsets.all(2),
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle, color: minusIconColor),
              //           child: Icon(
              //             MdiIcons.minus,
              //             color: Colors.white,
              //             size: 18,
              //           )).onTap(() {
              //         setState(() {
              //           count>1? count--:count=1;
              //         });
              //
              //       }),
              //       Text(
              //         count.toString(),
              //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              //       ),
              //       Container(
              //           padding: EdgeInsets.all(2),
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle, color: minusIconColor),
              //           child: Icon(
              //             MdiIcons.plus,
              //             color: Colors.white,
              //             size: 18,
              //           )).onTap(() {
              //         setState(() {
              //           count++;
              //         });
              //
              //       }),
              //     ],
              //   )
              //       .box
              //       .width(110)
              //       .padding(EdgeInsets.all(5))
              //       .border(color: mainColor)
              //       .roundedLg
              //       .make(),
              // ),
              // RadioListTile(
              //   value: 2,
              //   groupValue: selectedRadio,
              //   contentPadding: EdgeInsets.zero,
              //   visualDensity: VisualDensity(vertical: -4),
              //
              //   title: Row(
              //     children: [
              //       Text(
              //         strip1,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //       Text(
              //         p10,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //     ],
              //   ),
              //   subtitle: Row(
              //     children: [
              //       ImageIcon(
              //         AssetImage(
              //           icTakaSign,
              //         ),
              //         size: 12,
              //       ),
              //       SizedBox(
              //         width: 5,
              //       ),
              //       Text(
              //         tk760,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //     ],
              //   ),
              //   onChanged: (val) {
              //     setSelectedRadio(val!);
              //   },
              //   activeColor: tittleColor,
              //   secondary: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //           padding: EdgeInsets.all(2),
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle, color: minusIconColor),
              //           child: Icon(
              //             MdiIcons.minus,
              //             color: Colors.white,
              //             size: 18,
              //           )).onTap(() {
              //         setState(() {
              //           count1>1? count1--:count1=1;
              //         });
              //
              //       }),
              //       Text(
              //         count1.toString(),
              //         style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),
              //       ),
              //       Container(
              //         padding: EdgeInsets.all(2),
              //         decoration: BoxDecoration(
              //             shape: BoxShape.circle, color: minusIconColor),
              //         child: Icon(
              //           MdiIcons.plus,
              //           color: Colors.white,
              //           size: 18,
              //         ).onTap(() {
              //           setState(() {
              //             count1++;
              //           });
              //
              //         }),
              //
              //       ),
              //     ],
              //   )
              //       .box
              //       .width(110)
              //       .padding(EdgeInsets.all(5))
              //       .border(color: mainColor)
              //       .roundedLg
              //       .make(),
              // ),
              // RadioListTile(contentPadding: EdgeInsets.zero,
              //   visualDensity: VisualDensity(vertical: -4),
              //
              //   value: 3,
              //   groupValue: selectedRadio,
              //   title: Row(
              //     children: [
              //       Text(
              //         box1,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //       Text(
              //         strip51,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //     ],
              //   ),
              //   subtitle: Row(
              //     children: [
              //       ImageIcon(
              //         AssetImage(
              //           icTakaSign,
              //         ),
              //         size: 12,
              //       ),
              //       SizedBox(
              //         width: 5,
              //       ),
              //       Text(
              //         tk387,
              //         style: TextStyle(color: minusIconColor),
              //       ),
              //     ],
              //   ),
              //   onChanged: (val) {
              //     setSelectedRadio(val!);
              //   },
              //   activeColor: tittleColor,
              //   secondary: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //           padding: EdgeInsets.all(2),
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle, color: minusIconColor),
              //           child: Icon(
              //             MdiIcons.minus,
              //             color: Colors.white,
              //             size: 18,
              //           )).onTap(() {
              //         setState(() {
              //           count2>1? count2--:count2=1;
              //         });
              //
              //       }),
              //       Text(
              //         count2.toString(),
              //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //       ),
              //       Container(
              //           padding: EdgeInsets.all(2),
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle, color: minusIconColor),
              //           child: Icon(
              //             MdiIcons.plus,
              //             color: Colors.white,
              //             size: 18,
              //           )).onTap(() {
              //         setState(() {
              //           count2++;
              //         });
              //       }),
              //     ],
              //   )
              //       .box
              //       .width(110)
              //       .padding(EdgeInsets.all(5))
              //       .border(color: mainColor)
              //       .roundedLg
              //       .make(),
              // ),
              // SizedBox(height: 10,),
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         primary: buttonColor,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(20))),
              //     onPressed: () {},
              //     child: Row(
              //       children: [
              //         Text(
              //           checkOut,
              //           style: TextStyle(
              //               color: Colors.white, fontWeight: FontWeight.bold),
              //         ),
              //         Spacer(),
              //         ImageIcon(
              //           AssetImage(
              //             icTakaSign,
              //           ),
              //           size: 12,
              //         ),
              //         5.widthBox,
              //         Text(
              //           tk408,
              //           style: TextStyle(
              //               color: Colors.white, fontWeight: FontWeight.bold),
              //         )
              //       ],
              //     )),
              // SizedBox(height: 5,),

            ],
          ),
        ),
      ),
    );
  }
}
