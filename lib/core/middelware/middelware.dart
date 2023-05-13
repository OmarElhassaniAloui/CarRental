import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/services/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MiddelWare extends GetMiddleware{
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override

  RouteSettings? redirect(String? route) {

    if (myServices.sharedPreferences.getString("step") == '2') {
      return RouteSettings(name: AppRout.homepage);
    }
    //onboarding middleware
    if (myServices.sharedPreferences.getString("step") =='1') {
      return RouteSettings(name: AppRout.login);
    }
    
    return null;
  }
}
