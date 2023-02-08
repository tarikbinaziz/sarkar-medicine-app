import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../consts/colors.dart';
import '../../../consts/images.dart';
import '../../../consts/list.dart';
import '../../../consts/strings.dart';
import 'Custom Contaier item/custom_item_container.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -20,
        elevation: 0,
        leading: BackButton(
          color: titleColor,
        ),
        // leadingWidth: 95,
        // title:  Text(
        //   myCart,
        //   style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
        // ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imgOsudKiniFullLogo,
              width: 65,
            ),
            SizedBox(
              width: context.width() / 1.6,
              height: 35,
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                    hintText: searchByBrand,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsets.only(left: 20, top: 0, bottom: 0, right: 0),
                    hintStyle: TextStyle(color: textFieldGrey, fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(
                      FeatherIcons.search,
                    )),
              ),
            ),
          ],
        ),
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
        child: Column(
          children: [
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return Row(
            //         children: [
            //           Image.asset(
            //             imgNapa,
            //             width: 80,
            //           ),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 napa,
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     color: darkFontGrey),
            //               ),
            //               Text(
            //                 tablet,
            //                 style: TextStyle(color: darkFontGrey),
            //               ),
            //               Text(
            //                 "Paracetamol 500mg",
            //                 style: TextStyle(color: darkFontGrey),
            //               ),
            //               Text(
            //                 "Beximco Pharmaceuticals Ltd",
            //                 style: TextStyle(color: darkFontGrey),
            //               ),
            //               Row(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   ImageIcon(
            //                     AssetImage(icTakaSign),
            //                     size: 12,
            //                     color: redColorMain,
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     "8.9",
            //                     style: TextStyle(
            //                       color: redColorMain,
            //                     ),
            //                   ),
            //                   ImageIcon(
            //                     AssetImage(icTakaSign),
            //                     size: 8,
            //                     color: fontGrey,
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     "8.9",
            //                     style: TextStyle(
            //                         color: fontGrey,
            //                         decoration: TextDecoration.lineThrough),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           )
            //         ],
            //       );
            //     }),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(imgNapa),fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              napa,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: darkFontGrey),
                            ),
                            Text(
                              tablet,
                              style: TextStyle(color: darkFontGrey),
                            ),
                            Text(
                              "Paracetamol 500mg",
                              style: TextStyle(color: darkFontGrey),
                            ),
                            Text(
                              "Beximco Pharmaceuticals Ltd",
                              style: TextStyle(color: darkFontGrey),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ImageIcon(
                                  AssetImage(icTakaSign),
                                  size: 12,
                                  color: redColorMain,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "8.9",
                                  style: TextStyle(
                                    color: redColorMain,
                                  ),
                                ),
                                ImageIcon(
                                  AssetImage(icTakaSign),
                                  size: 8,
                                  color: fontGrey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "8.9",
                                  style: TextStyle(
                                      color: fontGrey,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                    child: Divider(
                      color: textFieldGrey,
                      thickness: 1,
                    ),
                  );
                },
                itemCount: 10)
            // GridView.builder(
            //     padding: EdgeInsets.all(10),
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: seeAllfrequentlyAskedMedicineTitleList.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10,childAspectRatio: 0.75),
            //     itemBuilder: (context, index) {
            //       return seeAllItems(
            //           image: seeAllFrequentlyAskedMedicineImgList[index],
            //           tittle: seeAllfrequentlyAskedMedicineTitleList[index],
            //           tk: tk8);
            //     }),
          ],
        ),
      ),
    );
  }
}
