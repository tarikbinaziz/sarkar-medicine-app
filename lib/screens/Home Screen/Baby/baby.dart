import 'package:flutter/material.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/screens/Home%20Screen/Features/dealsOfTheDay.dart';
import 'package:medicine_app/widgets/Custom%20Appbar/custom_appBar.dart';
import 'package:http/http.dart' as http;

class BabyProductScreen extends StatelessWidget {
  const BabyProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: baby),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.73,
                ),
                itemCount: 4,
                itemBuilder: (_, index) {
                  return dealsOfTheDay(image: imgNapa,tittle: napa,tk: "8");
                })
          ],
        ),
      ),
    );
  }
}
