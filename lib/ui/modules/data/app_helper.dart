

import 'package:flutter/material.dart';

class AppHelper with ChangeNotifier{
  String lang = "ar";
  bool isDarkMode = false;


  Future<void> changeDarkMood(bool isDarkMode){
    this.isDarkMode = isDarkMode;
    notifyListeners();
    return Future.value();
  }

  Future<void> changeLang(){
     if(lang == "ar") {
       lang = "en";
     } else {
       lang = "ar";
     }
    notifyListeners();
    return Future.value();
  }
}