import 'package:flutter/material.dart';

class AppStateProvider extends ChangeNotifier {
  int bottomSelectedTab = 0;
  bool isWebDrawerOpen = true;
  int selectedDrawerItem = 0;

  AppStateProvider();

  void changeIsWebDrawerOpen({bool? value}) {
    isWebDrawerOpen = value ?? !isWebDrawerOpen;
    notifyListeners();
  }

}
