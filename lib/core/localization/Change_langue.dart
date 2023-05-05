import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLangController extends GetxController {
  Locale? langInitial;
  MyServices? myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices?.sharedPreferences.setString("lang ", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();
    String? sharedPrefLang = myServices?.sharedPreferences.getString("lang ");
    if (sharedPrefLang == "ar") {
      langInitial = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      langInitial = const Locale("en");
    } else {
      langInitial = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
