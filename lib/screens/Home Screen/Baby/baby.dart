import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:medicine_app/Models/Feature%20Product%20Model/FeatureProductModel.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:medicine_app/widgets/Custom%20Appbar/custom_appBar.dart';
import 'package:http/http.dart' as http;

class BabyProductScreen extends StatelessWidget {
  const BabyProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<FeatureProductModel> getProductApi() async {
      var response = await http
          .get(Uri.parse("https://osudkini.com/api/v1/categories/featured"));
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        return FeatureProductModel.fromJson(data);
      } else {
        return FeatureProductModel.fromJson(data);
      }
    }

    return Scaffold(
      appBar: customAppBar(title: baby),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FutureBuilder<FeatureProductModel>(
              future: getProductApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.data!.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 0.73,
                      ),
                      itemBuilder: (_, index) {
                        return ImageIcon(AssetImage(
                            snapshot.data!.data![index].icon.toString()));
                      });
                } else {
                  return Container(child: CircularProgressIndicator());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
