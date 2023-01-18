

import 'package:flutter/material.dart';

import '../consts/consts.dart';

Widget customTextField({String? tittle,String? hint,controller}) {
  return SizedBox(
    height: 40,
    child: TextFormField(
      //   controller: controller,
      decoration: InputDecoration(
          fillColor: lightGrey,
          filled: true,
          hintText: hint,
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          hintStyle: TextStyle(fontFamily: semibold,color: textFieldGrey),
          suffixIcon: Icon(Icons.search,color: fontGrey,),
          border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(20)),
      ),

    ),
  );
}
