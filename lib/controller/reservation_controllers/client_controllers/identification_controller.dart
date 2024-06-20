import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/class/statusrequest.dart';
import '../../../core/constants/app_routs.dart';
import '../../../core/services/services.dart';
import '../../../data/datasrc/remot/client_data/identification_data.dart';

abstract class IdentificationController extends GetxController {
  Future<void> postIdentification();
  Future<void> getIdentification();
  Future<void> updateIdentification();
}

class IdentificationControllerImp extends IdentificationController {
  // text controllers
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController idNumber;
  late TextEditingController idType;
  late TextEditingController idImage;
  //shared preferences
  MyServices myServices = Get.find();
  // status request
  StatusRequest statusRequest = StatusRequest.none;
  // personal info data
  IdentificationData identificationData = IdentificationData(Get.find());
  // data
  List data = [];
  String? hintValue = "National ID";
  String? radioGroubItems;

  @override
  Future<void> getIdentification() {
    // TODO: implement getIdentification
    throw UnimplementedError();
  }

  @override
  Future<void> postIdentification() async{
    if (formstate.currentState!.validate()) {
      formstate.currentState!.save();
      statusRequest = StatusRequest.loading;
      update();
      var response = await identificationData.postIdentification(
        // myServices.clientData.id,
        idNumber.text,
        idImage.text,
        idImage.text,
      );
      statusRequest = StatusRequest.none;
      update();
      if (response['status'] == true) {
        Get.snackbar(
          'Success',
          'Identification added successfully',
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        goToDrinigLcensePage();
      } else {
        Get.snackbar(
          'Error',
          'Identification not added',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
    
  }

  @override
  Future<void> updateIdentification() {
    // TODO: implement updateIdentification
    throw UnimplementedError();
  }

  
  

  

  String? getGoupItem() {
    update();
    return radioGroubItems;
  }

  @override
  void onInit() {
    idNumber = TextEditingController();
    getGoupItem();

    super.onInit();
  }

  @override
  void onClose() {
    idNumber.dispose();
    super.onClose();
  } 
  goToDrinigLcensePage(){
    Get.toNamed(
      AppRout.drivingLicensePage , 
      arguments: {
        'idNumber': idNumber.text,
      }
      );
  }
}
