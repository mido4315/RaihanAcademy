import 'package:flutter/material.dart';


class ProviderApp extends ChangeNotifier{
  String? userType;
  void selectType(String type) {
    userType = type;
    print('Provider User Type : $userType');
    notifyListeners();
  }
}