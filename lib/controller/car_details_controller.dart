import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/functions/handlingData.dart';
import 'package:get/get.dart';
import 'package:carrental/data/datasrc/remot/car_details.dart';

abstract class CarDetailsController extends GetxController {
  initData();
  getData();
  goToBookingPage(int selectedCar);
}

class CarDetailsControllerImp extends CarDetailsController {
  CarDetailsData carDetailsData = CarDetailsData(Get.find());

  int? selectedCar;
  List cars = [];
  List? carId = [];

  @override
  getData() async {
    cars.clear();
    var statusRequest = StatusRequest.loading;
    var response = await carDetailsData.getCarDetails();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        //! hna kayn l'mochkil..👇
        cars.addAll(response['data']);
        selectedCar = response['data']['car_id'];
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
  // int getSelectedCar(){

  //   return selectedCar!;

  // }
  // getCarId() async {
  //   var response = await carDetailsData.getCarDetails();
  //   print("=============================== Controller $response ");
  //   if (response['status'] == "success") {
  //     //! hna kayn l'mochkil..👇
  //     carId = response['data'];
  //     // print("carId ======== ${carId['car_id']}");
  //     print("carId ======== ${carId['car_id']}");
  //   } else {
  //     print("error");
  //   }
  //   return carId;
  // }

  @override
  void onInit() {
    getData();
    initData();
    // getCarId();
    super.onInit();
  }

  @override
  initData() {
    selectedCar = Get.arguments['selectedCar'];
    update();
  }

  changeValue(value) {
    selectedCar = value;
    update();
  }

  @override
  goToBookingPage(int selectedCar) {}
}
