import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/functions/handlingData.dart';
import 'package:carrental/data/datasrc/remot/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initData();
  getData();
  goToCarDetails(int selectedCar);
}

class HomeControllerImp extends HomeController {
  // MyServices myServices = Get.find();

  HomeData homeData = HomeData(Get.find());

  String? username;
  String? id;
  String? lang;

  List cars = [];

  @override
  initData() {
    // username = myServices.shared_Preferences.getString("username");
    // id = myServices.shared_Preferences.getString("id");
    // lang = myServices.shared_Preferences.getString("lang");
    // update();
  }
  @override
  getData() async {
    cars.clear();
    var statusRequest = StatusRequest.loading;
    var response = await homeData.getAllCars();
    print("=============================== Controller $response ");
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

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  goToCarDetails(selectedCar) {
    Get.toNamed(
      AppRout.carDetails,
      arguments: {
        'selectedCar': selectedCar,
        },
    );
  } 
  
}
