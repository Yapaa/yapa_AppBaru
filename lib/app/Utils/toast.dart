import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({required String message}){
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER_RIGHT,
    timeInSecForIosWeb: 2,
    backgroundColor: Color.fromARGB(56, 187, 187, 187),
    textColor: Color.fromARGB(255, 0, 0, 0),
    fontSize: 16.0
    );
}