import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/view/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../core/functions/handlingData.dart';
import '../../data/datasrc/remot/authData/signup_data.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirm_password;

  StatusRequest statusRequest = StatusRequest.none;
  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postdata(firstName.text, lastName.text,
          password.text, email.text, confirm_password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.off(Home(),
              arguments: {"email": email.text}); 
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignIn() {
    Get.to(Home());
  }

  @override
  void onInit() {
    firstName = TextEditingController();
    lastName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirm_password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    email.dispose();
    confirm_password.dispose();
    password.dispose();
    super.dispose();
  }
}
