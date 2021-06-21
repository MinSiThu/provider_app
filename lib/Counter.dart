import 'package:flutter/material.dart';

class Counter extends ChangeNotifier{
  var _counter = 0;

  int get getCounter{
    return _counter;
  }

  void increase(){
    _counter+=1;
    notifyListeners();
  }
}