import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/data/datasrc/remot/test_data.dart';
import 'package:get/get.dart';

import '../core/functions/handlingData.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  getDataController() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response);
    }
    update();
  }

  @override
  void onInit() {
    getDataController(); 
    super.onInit();
  }
}
