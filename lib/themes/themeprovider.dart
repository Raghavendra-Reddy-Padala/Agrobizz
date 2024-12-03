import 'package:farmco/themes/darkmode.dart';
import 'package:farmco/themes/lighitmode.dart';
import 'package:flutter/material.dart';
class Themeprovider extends ChangeNotifier{
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkMode=>_themeData==darkMode;

  set themeData(ThemeData themeData){
    _themeData=themeData;
    notifyListeners();
  }
void toggleTheme(){
  if(_themeData==lightMode){
    themeData=darkMode;
  }else{
    themeData=lightMode;
  }
}
}