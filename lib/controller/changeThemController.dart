
import 'package:carrental/core/constants/appThem.dart';

// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemController extends GetxController { 
  //by me 
  RxBool switchVal = false.obs;
  //by me 
  changeThem(bool value) { 
    switchVal = value.obs; 
    if (Get.isDarkMode) {
      Get.changeTheme(AppTheme.lightTheme);
    } else {
      Get.changeTheme(AppTheme.darkTheme);
    }
    update(); 
  } 
  //

}
