import 'package:flutter/material.dart';

import '../../utils/colors.dart';

AppBar appBarMethod(
    {required String text,
    required bool isButton,
    required BuildContext context}) {
  return AppBar(
    backgroundColor: primary,
    leading: isButton
        ? IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: textColor,
            ),
          )
        : null,
    title: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
