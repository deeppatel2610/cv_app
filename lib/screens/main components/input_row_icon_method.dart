import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'input_box_method.dart';

Row inputRowIconMethod(
    {required String text,
    required IconData icon,
    required bool isNumber,
    required bool isAddress,
    required control}) {
  return Row(
    children: [
      Icon(
        icon,
        size: 25,
        color: primary,
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: inputBoxMethod(
            text: text,
            isNumber: isNumber,
            isAddress: isAddress,
            control: control),
      ),
    ],
  );
}
