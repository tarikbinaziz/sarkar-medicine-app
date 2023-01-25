import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/widgets/Custom%20Appbar/custom_appBar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(title: myOrder),
        // bottomNavigationBar: Padding(
        //   padding: EdgeInsets.all(16),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: AppButton(
        //           elevation: 0,
        //           enableScaleAnimation: false,
        //           onTap: () => finish(context),
        //           shapeBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(6),
        //               borderSide: BorderSide(color: mainColor)),
        //           text: "Cancel",
        //           textStyle:
        //           TextStyle(color: tittleColor, fontWeight: FontWeight.w700),
        //         ),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       Expanded(
        //         child: AppButton(
        //           elevation: 0,
        //           enableScaleAnimation: false,
        //           onTap: () {
        //
        //           },
        //           shapeBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(6),
        //               borderSide: BorderSide.none),
        //           color: mainColor,
        //           text: "Track My Order",
        //           textStyle: TextStyle(
        //               color: mainColor,
        //               fontWeight: FontWeight.w700),
        //         ),
        //       ),
        //
        //
        //     ],
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(
                //   height: 15,
                // ),
                // Text(
                //   "24 jan, 2023",
                //   style: TextStyle(color: tittleColor),
                // ),
                // const SizedBox(
                //   height: 15,
                // ),
                // SizedBox(
                //   width: context.width() * 2,
                //   height: 60.0,
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       children: [
                //         TimelineTile(
                //           axis: TimelineAxis.horizontal,
                //           alignment: TimelineAlign.manual,
                //           lineXY: 0.3,
                //           isFirst: true,
                //           indicatorStyle: IndicatorStyle(
                //               indicator: Icon(
                //                 Icons.check_circle,
                //                 color: kMainColor,
                //               ),
                //               padding: EdgeInsets.only(right: 4.0)),
                //           endChild: Text(
                //             'Confirmed',
                //             style: TextStyle(color: kSubTitleColor),
                //           ),
                //           beforeLineStyle:
                //           LineStyle(color: kMainColor, thickness: 1),
                //         ),
                //         TimelineTile(
                //           axis: TimelineAxis.horizontal,
                //           alignment: TimelineAlign.manual,
                //           lineXY: 0.3,
                //           indicatorStyle: IndicatorStyle(
                //               indicator: Icon(
                //                 Icons.check_circle,
                //                 color: kMainColor,
                //               ),
                //               color: Colors.green,
                //               padding: EdgeInsets.only(right: 4.0)),
                //           endChild: Column(
                //             crossAxisAlignment: CrossAxisAlignment.end,
                //             children: [
                //               Text(
                //                 'Prepered',
                //                 style: TextStyle(color: kSubTitleColor),
                //               ),
                //             ],
                //           ),
                //           beforeLineStyle:
                //           LineStyle(color: kMainColor, thickness: 1),
                //         ),
                //         TimelineTile(
                //           axis: TimelineAxis.horizontal,
                //           alignment: TimelineAlign.manual,
                //           lineXY: 0.3,
                //           indicatorStyle: IndicatorStyle(
                //               indicator: Stack(children: [
                //                 Container(
                //                   decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(20),
                //                       color: kDividerColor),
                //                   child: Center(
                //                     child: Container(
                //                       height: 10,
                //                       width: 10,
                //                       decoration: BoxDecoration(
                //                           borderRadius:
                //                           BorderRadius.circular(40),
                //                           color: kMainColor),
                //                     ),
                //                   ),
                //                 ),
                //               ]),
                //               // color: Colors.green,
                //               padding: const EdgeInsets.only(right: 4.0)),
                //           endChild: Column(
                //             crossAxisAlignment: CrossAxisAlignment.end,
                //             children: [
                //               Text(
                //                 'Picked',
                //                 style: TextStyle(color: kSubTitleColor),
                //               ),
                //             ],
                //           ),
                //           beforeLineStyle:
                //           LineStyle(color: kDividerColor, thickness: 1),
                //         ),
                //         TimelineTile(
                //           axis: TimelineAxis.horizontal,
                //           alignment: TimelineAlign.manual,
                //           lineXY: 0.3,
                //           indicatorStyle: IndicatorStyle(
                //               indicator: Stack(children: [
                //                 Container(
                //                   decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(20),
                //                       color: kDividerColor),
                //                   child: Center(
                //                     child: Container(
                //                       height: 10,
                //                       width: 10,
                //                       decoration: BoxDecoration(
                //                           borderRadius:
                //                           BorderRadius.circular(40),
                //                           color: kMainColor),
                //                     ),
                //                   ),
                //                 ),
                //               ]),
                //               // color: Colors.green,
                //               padding: const EdgeInsets.only(right: 4.0)),
                //           endChild: Column(
                //             crossAxisAlignment: CrossAxisAlignment.end,
                //             children: [
                //               Text(
                //                 'Delivered',
                //                 style: TextStyle(color: kSubTitleColor),
                //               ),
                //             ],
                //           ),
                //           beforeLineStyle:
                //           LineStyle(color: kDividerColor, thickness: 1),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 15,
                ),
                // ListView.builder(
                //     itemCount: 2,
                //     shrinkWrap: true,
                //     physics: NeverScrollableScrollPhysics(),
                //     itemBuilder: (_, index) {
                //       return Card(
                //         elevation: 0,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10),
                //             side: BorderSide(
                //                 color: mainColor.withOpacity(0.10))),
                //         child: Row(
                //           children: [
                //             Container(
                //               padding: EdgeInsets.all(50),
                //               decoration: BoxDecoration(
                //                   image: DecorationImage(
                //                       image: AssetImage(
                //                           "assets/images/napa.png"))),
                //             ),
                //             Expanded(
                //               child: Padding(
                //                 padding: const EdgeInsets.all(10.0),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       "Maan Pharmacy Ltd.",
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.bold,
                //                         color: tittleColor,
                //                       ),
                //                     ),
                //                     SizedBox(
                //                       height: 4,
                //                     ),
                //                     Row(
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         Text("(Paracetamol)",
                //                           //  style: darkFontGrey
                //                         ),
                //                         RichText(
                //                             text: TextSpan(
                //                                 text: '\$6.99',
                //                                 style: TextStyle(
                //                                     color: Colors.red,
                //                                     fontWeight:
                //                                     FontWeight.w600),
                //                                 children: [
                //                                   WidgetSpan(
                //                                       child: SizedBox(
                //                                         width: 5,
                //                                       )),
                //                                   // TextSpan(
                //                                   //   text: '\$6.99',
                //                                   //   style: TextStyle(
                //                                   //       color: kSubTitleColor,
                //                                   //       decoration: TextDecoration
                //                                   //           .lineThrough,
                //                                   //       fontWeight:
                //                                   //       FontWeight.w400),
                //                                   // ),
                //                                 ])),
                //                       ],
                //                     ),
                //                     SizedBox(
                //                       height: 7,
                //                     ),
                //                     Row(
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         Text(
                //                           '10 tablets',
                //                          // style: darkFontGrey,
                //                         ),
                //                         Text(
                //                           'Qty: 01',
                //                          // style: ksubTitleTextStyle,
                //                         ),
                //                       ],
                //                     )
                //                   ],
                //                 ),
                //               ),
                //             )
                //           ],
                //         ),
                //       );
                //     }),
                // const SizedBox(
                //   height: 24,
                // ),
                Text(
                  "Order Details",
                  style: TextStyle(
                      color: titleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your order Number:",
                      style: TextStyle(
                          color: titleColor.withOpacity(0.7),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "#s5jc-226",
                      style: TextStyle(
                          color: titleColor, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Your order from:",
                //       style: TextStyle(
                //         color: tittleColor.withOpacity(0.7),
                //       ),
                //     ),
                //     Text(
                //       "Maan Pharmacy Ltd.",
                //       style: TextStyle(
                //         color: tittleColor,
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Addesss:",
                      style: TextStyle(
                          color: titleColor.withOpacity(0.7),
                          fontWeight: FontWeight.w400),
                    ),
                    RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            text: "Home",
                            style: TextStyle(
                                color: titleColor,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text:
                                "\nNew York, NY 10001-4374\nRoad NO: 17, Floor 27",
                                style: TextStyle(
                                    color: darkFontGrey,
                                    fontWeight: FontWeight.w400),
                              )
                            ]))
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                // Text(
                //   "Payment Method",
                //   style: TextStyle(
                //       fontWeight: FontWeight.bold, color: tittleColor),
                // ),
                // const SizedBox(
                //   height: 12,
                // ),
                // Container(
                //   height: 56,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(6),
                //       color: mainColor),
                //   child: Padding(
                //     padding: const EdgeInsets.all(6.0),
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Container(
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle, color: Colors.white),
                //           child: Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Image.asset(
                //               "assets/images/credit.png",
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 4,
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(10.0),
                //           child: Image.asset(
                //             "assets/images/visa.png",
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 24,
                // ),
                // RichText(
                //     textAlign: TextAlign.end,
                //     text: TextSpan(
                //         text: "View  Details ",
                //         style: TextStyle(
                //             color: tittleColor, fontWeight: FontWeight.w700),
                //         children: [
                //           TextSpan(
                //             text: "(2 Items)",
                //             style: TextStyle(
                //                 color: darkFontGrey,
                //                 fontWeight: FontWeight.w400),
                //           )
                //         ])),
                // const SizedBox(
                //   height: 15,
                // ),
                // Row(
                //   children: [
                //     RichText(
                //         textAlign: TextAlign.justify,
                //         text: TextSpan(
                //             text: "1. ",
                //             style: TextStyle(
                //               color: tittleColor,
                //             ),
                //             children: [
                //               TextSpan(
                //                 text: "Napa extend tablet",
                //                 style: TextStyle(
                //                     color: darkFontGrey,
                //                     fontWeight: FontWeight.w400),
                //               ),
                //             ])),
                //     const Spacer(),
                //     Text("\$3.59",
                //         style: TextStyle(
                //             color: tittleColor, fontWeight: FontWeight.w400)),
                //   ],
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // const Divider(
                //   thickness: 1,
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   children: [
                //     RichText(
                //         textAlign: TextAlign.justify,
                //         text: TextSpan(
                //             text: "2. ",
                //             style: TextStyle(
                //               color: tittleColor,
                //             ),
                //             children: [
                //               TextSpan(
                //                 text: "Xpa Pediatric Drop",
                //                 style: TextStyle(
                //                   color: darkFontGrey,
                //                 ),
                //               ),
                //             ])),
                //     const Spacer(),
                //     Text("\$5.59",
                //         style: TextStyle(
                //             color: tittleColor, fontWeight: FontWeight.w400)),
                //   ],
                // ),
                // SizedBox(
                //   height: 24,
                // ),
                // Text(
                //   "Subtotal",
                //   style: TextStyle(
                //       color: tittleColor, fontWeight: FontWeight.bold),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "VAT",
                //       style: TextStyle(
                //           color: darkFontGrey, fontWeight: FontWeight.w400),
                //     ),
                //     Text(
                //       "\$0.00",
                //       style: TextStyle(
                //           color: tittleColor, fontWeight: FontWeight.w400),
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Total (incl. VAT)",
                //       style: TextStyle(
                //           color: tittleColor, fontWeight: FontWeight.w500),
                //     ),
                //     Text(
                //       "\$9.59",
                //       style: TextStyle(
                //           color: tittleColor, fontWeight: FontWeight.w500),
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Divider(
                //   thickness: 1,
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                Text(orderItems,style: TextStyle(fontWeight: FontWeight.bold,color: titleColor),),
                ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          leading: Image.asset(imgNapa),
                          title: Text(napa),
                          subtitle: Text(tk7),
                          trailing: Text(tk8),
                          shape: OutlineInputBorder(borderSide: BorderSide.none),

                        ).card.white.shadowColor(darkFontGrey).make(),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}