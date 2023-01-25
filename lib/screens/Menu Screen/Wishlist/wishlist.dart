import 'package:flutter/material.dart';

import '../../../consts/list.dart';
import '../../../consts/strings.dart';
import '../../../widgets/Custom Appbar/custom_appBar.dart';
import '../../Home Screen/See All/Custom Contaier item/custom_item_container.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title:wishlist),
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
