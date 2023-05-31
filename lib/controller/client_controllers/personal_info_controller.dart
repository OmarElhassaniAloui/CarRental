import 'package:carrental/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_routs.dart';
import '../../core/functions/handlingData.dart';
import '../../core/services/services.dart';
import '../../data/datasrc/remot/client_data/personal_info_data.dart';
abstract class PersonalInfoController extends GetxController {
  Future<void> postPersonalInfo();
  Future<void> getPersonalInfo();
  Future<void> updatePersonalInfo();
}

class PersonalInfoControllerImp extends PersonalInfoController {
  // text controllers
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController fullName;
  late TextEditingController email;
  late TextEditingController phone_number;
  late TextEditingController address;
  //shared preferences
  MyServices myServices = Get.find();
  // status request
  StatusRequest statusRequest = StatusRequest.none;
  // personal info data
  PersonalInfoData personalInfoData = PersonalInfoData(Get.find());
  // data
  List data = [];


  @override
  Future<void> getPersonalInfo() {
    throw UnimplementedError();
  }

  @override
  Future<void> postPersonalInfo() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await personalInfoData.postPersonalInfodata(
        fullName.text,
        email.text,
        phone_number.text,
        address.text,
      ); 
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data.addAll(response['data']);
          Get.offNamed(AppRout.homepage, arguments: {
            "email": email.text,
            "fullName": fullName.text,
            "phone_number": phone_number.text,
            "address": address.text,
            
          });
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
        update();
      }
    }
  }

  @override
  Future<void> updatePersonalInfo() {
    throw UnimplementedError();
  }
  
}
