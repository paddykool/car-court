import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  int selectedTab = 0;

  void goTab(int index) {
    selectedTab = index;
    notifyListeners();
  }
}
