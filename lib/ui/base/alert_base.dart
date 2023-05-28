import 'package:flutter/material.dart';

mixin class AlertBase{

  showSnakeBar(String text,
      {SnackBarAction? action,
        required BuildContext context,
        Color snakeColorBackGround = Colors.black,
        Color textColor = Colors.white,
        double elevation = 0.0,
        int durationInMilliSeconds = 2000}) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(),
      // content: CustomText(
      //   text: text,
      //   customTextStyle: SemiBoldStyle(fontSize: 14.sp, color: whiteColor),
      // ),
      backgroundColor: snakeColorBackGround,
      elevation: elevation,
      behavior: SnackBarBehavior.floating,
      action: action,
      duration: Duration(milliseconds: durationInMilliSeconds),
      padding:
      EdgeInsets.only(left: 16.0, right: 16.0, top: 12, bottom: 12),
      margin: EdgeInsets.zero,
    ));
  }
}