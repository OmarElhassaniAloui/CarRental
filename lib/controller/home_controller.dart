import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/functions/handlingData.dart';
import 'package:carrental/data/datasrc/remot/home_data.dart';
import 'package:get/get.dart';

import '../core/services/services.dart';

abstract class HomeController extends GetxController {
  initData();
  getData();
  goToCarDetails(int selectedCar);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  HomeData homeData = HomeData(Get.find());

  String? username;
  String? id;
  String? lang;
  // List? carId;

  List cars = [];

  StatusRequest statusRequest = StatusRequest.none;

  @override
  initData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
    // lang = myServices.sharedPreferences.getString("lang");
    update();
  }
  @override
  getData() async {
    cars.clear();
    var statusRequest = StatusRequest.loading;
    var response = await homeData.getAllCars();
    print("=============================== home Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        //! hna kayn l'mochkil..👇
        cars.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  int? getCarId(i) {
    var carId = cars[i]['idVoiture'];
    return carId;
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  goToCarDetails(selectedCar){
    Get.toNamed(
      AppRout.carDetails,
      arguments: {
        'selectedCar': selectedCar,
      },
    );
  }
}
