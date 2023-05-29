

import 'package:flutter/material.dart';

class SecondProvider extends ChangeNotifier{
  String test = "first text";


  Future<void> updateTest(String value){
    test = value;
    notifyListeners();
    return Future.value();
  }

}