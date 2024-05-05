
import 'package:flutter/material.dart';
import 'package:notes_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  //initially theme is light mood
  ThemeData _themeData = lightMood;

  //getter method to access the theme from the other part of the code
  ThemeData get themeData => _themeData;

  //setter method to set the new theme
  bool get isDarkMood => _themeData == darkMood;
  
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //we will use this toggle in a switch later on.....
  void toggleTheme() {
    if(_themeData == lightMood) {
      themeData = darkMood;
    } else {
      themeData = lightMood;
    }
  }

}