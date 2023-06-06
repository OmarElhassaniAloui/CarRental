import 'package:carrental/data/datasrc/remot/test_data.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingData.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];

  StatusRequest statusRequest = StatusRequest.none;

  getData() async {
    //clear data
    data.clear();

       statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    print("=============================== Controller $response ");

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      update();
    }
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
