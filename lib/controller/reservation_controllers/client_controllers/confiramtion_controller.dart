import 'package:get/get.dart';

class ConfiramtionController extends GetxController { 
  
  @override
  void onInit() {
    Get.arguments['selectedCar'];
    Get.arguments['fullName']; 
    Get.arguments['email']; 
    Get.arguments['phone_number']; 

    super.onInit();
  }

  @override
  void onClose() {}
}
