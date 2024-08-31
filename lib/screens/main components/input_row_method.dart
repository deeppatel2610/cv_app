import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'input_box_method.dart';

Row inputRowMethod(
    {required String text,
    required String text2,
    required IconData icons,
    required bool isNumber,required bool isAddress,required controlFor1,required controlFor2}) {
  return Row(
    children: [
      Icon(
        icons,
        color: primary,
        size: 25,
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: inputBoxMethod(text: text, isNumber: isNumber,isAddress: isAddress,control:controlFor1),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: inputBoxMethod(text: text2, isNumber: isNumber,isAddress: isAddress,control: controlFor2),
      ),
    ],
  );
}
