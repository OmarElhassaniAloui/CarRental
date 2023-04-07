import 'package:flutter/material.dart';
import 'package:carrental/core/constants/them.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemController extends GetxController with MyTheme {
  var isDarkMode = false.obs;
  void toggleTheme() => isDarkMode.toggle();
  ThemeData gettheme() => isDarkMode.value ? MyTheme.dark : MyTheme.light;
  TextTheme gettextTheme() => isDarkMode.value ? MyTheme.darkTheme : MyTheme.lightTheme; 

}
