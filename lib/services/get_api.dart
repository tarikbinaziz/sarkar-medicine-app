

//prescription medicine api get
import 'dart:convert';

import '../Models/Familly needs/FamillyNeedsModel.dart';
import '../Models/prescription model/PrecriptionMedicine.dart';
import 'package:http/http.dart' as http;

Future<PrescriptionMedicine> getPrescriptionMedicine() async {
  var response =
  await http.get(Uri.parse("https://osudkini.com/api/v1/products/related/2"));
  var responseData = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return PrescriptionMedicine.fromJson(responseData);
  } else {
    return PrescriptionMedicine.fromJson(responseData);
  }
}

//deals of the medicine api get



//deals of the medicine api get

Future <FamillyNeedsModel> getFamillyNeeds() async{
  var response=await http.get(Uri.parse("https://osudkini.com/api/v1/categories/featured"));
  var data=jsonDecode(response.body.toString());
  if(data.hashCode==200){
    return FamillyNeedsModel.fromJson(data);
  }else{
    return FamillyNeedsModel.fromJson(data);
  }

}
