import 'package:flutter/material.dart';

import '../../utils/colors.dart';

Widget inputBoxMethod(
    {required String text,required bool isNumber,required bool isAddress,required control}) {
  return TextFormField(
    validator: (value){
      return value!.isEmpty?'This Detail is Important !':null;
    },
    controller: control,
    maxLines: isAddress?3:1,
    keyboardType: isNumber?const TextInputType.numberWithOptions():TextInputType.text,
    decoration: InputDecoration(
      labelText: text,
      labelStyle: TextStyle(
        color: textColorForInput,
        fontSize: 15,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: primary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: primary, width: 1.5),
      ),
    ),
  );
}


SizedBox temp() {
  return const SizedBox(
    height: 15,
  );
}