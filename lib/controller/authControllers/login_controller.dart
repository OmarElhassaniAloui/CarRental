import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/services/services.dart';
import 'package:carrental/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingData.dart';
import '../../data/datasrc/remot/authData/login_data.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // form controllers
  late TextEditingController email;
  late TextEditingController password;

  bool showpassword = true;
  // show and hide password
  showPassword() {
    showpassword = showpassword == true ? false : true;
    update();
  }

  List data = [];
  //shared preferences
  MyServices myServices = Get.find();

  // status request
  StatusRequest statusRequest = StatusRequest.none;

  // login function
  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // myServices.sharedPreferences.setString("id", response['data']['id']);
          // myServices.sharedPreferences
          //     .setString("firstName", response['data']['firstName']);
          // myServices.sharedPreferences
          //     .setString("lastName", response['data']['lastName']);
          // myServices.sharedPreferences
          //     .setString("email", response['data']['email']);
          myServices.sharedPreferences.setString("step",'2');
          Get.offNamed(AppRout.homepage);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRout.signup);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    // Get.toNamed(AppRout.forgetPassword);
  }
}
