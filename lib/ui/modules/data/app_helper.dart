

import 'package:flutter/material.dart';

class AppHelper with ChangeNotifier{
  String lang = "ar";
  bool isDarkMode = false;


  Future<void> changeDarkMood(bool isDarkMode){
    this.isDarkMode = isDarkMode;
    notifyListeners();
    return Future.value();
  }

  Future<void> changeLang(String lang){
    this.lang = lang;
    notifyListeners();
    return Future.value();
  }
}