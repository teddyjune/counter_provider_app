import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int count =0;

  void increase() {
    bool isLoading = true;
    notifyListeners();
    count++;
    notifyListeners(); //화면갱신
    isLoading = false;
    notifyListeners();
  }
}