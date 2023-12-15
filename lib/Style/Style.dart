import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

SizedBox sizedBox = SizedBox(
  height: 20,
);



ButtonStyle AppButtonStyle(backgroundColor){
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.all(20),
      backgroundColor: backgroundColor

  );
}

TextStyle HeadTextStyle(color, fontSize){
  return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    color: color,

  );
}

ErrorToast(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorRed,
      textColor: colorWhite,
      fontSize: 20

  );
}
