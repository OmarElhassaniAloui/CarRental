import 'package:carrental/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_routs.dart';
import '../../../core/functions/handlingData.dart';
import '../../../core/services/services.dart';
import '../../../data/datasrc/remot/client_data/personal_info_data.dart';

abstract class PersonalInfoController extends GetxController {
  Future<void> postPersonalInfo();
  Future<void> getPersonalInfo();
  Future<void> updatePersonalInfo();
}

class PersonalInfoControllerImp extends PersonalInfoController {
  // text controllers
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController firstName;
  late TextEditingController lastName;
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
  List? data = [];
  // int? lastClientId;
  List? clientData = [];

  @override
  Future<void> getPersonalInfo() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await personalInfoData.getPersonalInfodata();
    print("=============================== Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      clientData!.addAll(response['data']);
      myServices.sharedPreferences
          .setInt("idClient", clientData![0]['idClient']);
      update();
    }
  }

  @override
  Future<void> postPersonalInfo() async {
    if (formKey.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await personalInfoData.postPersonalInfodata(
        lastName.text,
        firstName.text,
        email.text,
        phone_number.text,
        address.text,
      );
      print("=============================== Controller $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data!.addAll(response['data']);
            
          myServices.sharedPreferences.setString("address", address.text);
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
  void onInit() {
    firstName = TextEditingController();
    lastName = TextEditingController();
    email = TextEditingController();
    phone_number = TextEditingController();
    address = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    email.dispose();
    phone_number.dispose();
    address.dispose();
    super.dispose();
  }

  @override
  Future<void> updatePersonalInfo() {
    throw UnimplementedError();
  }

  // pass data to another page
  goToIdentifcationPage() {

    Get.toNamed(AppRout.identification, arguments: {
      "firstName": firstName.text,
      "lastName": lastName.text,
      "email": email.text,
      "phone_number": phone_number.text,
      "address": address.text,
    });
  }
}
