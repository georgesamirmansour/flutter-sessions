import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{
  int counter  = 0;

  Future<void> increment(){
    counter +=1;
    notifyListeners();
    return Future.value();
  }

  Future<void> decrement(){
    counter -=1;
    notifyListeners();
    return Future.value();
  }
}