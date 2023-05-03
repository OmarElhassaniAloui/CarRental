import 'package:carrental/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingData.dart';
import '../../core/services/services.dart';
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
  showPassword(){
    showpassword = showpassword==true ? false:true;
    update();
  }
  //shared preferences
  MyServices myServices = Get.find();
  
  // status request
  StatusRequest statusRequest = StatusRequest.none;

  // login function
  @override
  login() async {
    try{
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {  
          myServices.shared_Preferences.setString("id",response['data']['id'] ) ; 
          myServices.shared_Preferences.setString("firstName",response['data']['firstName'] ) ; 
          myServices.shared_Preferences.setString("lastName",response['data']['lastName'] ) ; 
          myServices.shared_Preferences.setString("email", response['data']['email']) ; 
          myServices.shared_Preferences.setString("step",'2') ; 
          Get.to(Home());
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}

    }catch(e){
      print(e);
    }

  }

  @override
  goToSignUp() {
    // Get.offNamed(AppRoute.signUp);
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
    // Get.toNamed(AppRoute.forgetPassword);
  }
}