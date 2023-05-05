import 'package:carrental/core/services/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MiddelWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getBool("isLogin") == true) {
      return RouteSettings(name: "/home");
    }
    
    return null;
  }
}
