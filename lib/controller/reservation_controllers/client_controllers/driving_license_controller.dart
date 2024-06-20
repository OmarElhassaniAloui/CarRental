import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/data/datasrc/remot/client_data/driving_license_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/handlingData.dart';
import '../../../core/services/services.dart';

abstract class DrivingLicenseController extends GetxController {
  // creating function for get data from api
  getDrivingLicenseInfo();
  // creating function for delete data from api
  deleteDrivingLicenseInfo();
  // creating function for update data from api
  updateDrivingLicenseInfo();
  // creating function for add data from api
  addDrivingLicenseInfo();
}

class DrivingLicenseControllerImp extends DrivingLicenseController {
  // creating object from DrivingLicenseData class
  DrivingLicenseData drivingLicenseData = DrivingLicenseData(Get.find());                                          
  // import my services function
  MyServices myServices = Get.find();
 // status request
  StatusRequest statusRequest = StatusRequest.none;

  @override
  addDrivingLicenseInfo() async {
    statusRequest = StatusRequest.loading;
    var response = await drivingLicenseData.getDrivingLicenseData(
        myServices.sharedPreferences.getString("id")!,
        DateTime.now(),
        "photoFront",
        "photoBack");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        print("data");
        print(response);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();

  }

  @override
  deleteDrivingLicenseInfo() {
    // TODO: implement deleteDrivingLicenseInfo
    throw UnimplementedError();
  }

  @override
  getDrivingLicenseInfo() {
    // TODO: implement getDrivingLicenseInfo
    throw UnimplementedError();
  }

  @override
  updateDrivingLicenseInfo() {
    // TODO: implement updateDrivingLicenseInfo
    throw UnimplementedError();
  }
}
