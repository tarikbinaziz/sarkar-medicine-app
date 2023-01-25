import 'package:flutter/material.dart';
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
        titleSpacing: 0,
        elevation: 0,
        leading: BackButton(
          color: titleColor,
        ),
        // leadingWidth: 95,
        // title:  Text(
        //   myCart,
        //   style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
        // ),
        title: Image.asset(
          imgOsudKiniFullLogo,
          width: 65,
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
            GridView.builder(
                padding: EdgeInsets.all(10),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: seeAllfrequentlyAskedMedicineTitleList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10,childAspectRatio: 0.75),
                itemBuilder: (context, index) {
                  return seeAllItems(
                      image: seeAllFrequentlyAskedMedicineImgList[index],
                      tittle: seeAllfrequentlyAskedMedicineTitleList[index],
                      tk: tk8);
                }),
          ],
        ),
      ),
    );
  }
}
