import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/functions/handlingData.dart';
import 'package:carrental/core/services/services.dart';
import 'package:get/get.dart';
import 'package:carrental/data/datasrc/remot/car_details.dart';

abstract class CarDetailsController extends GetxController {
  initData();
  getData();
  goToBookingPage(int selectedCar);
}

class CarDetailsControllerImp extends CarDetailsController {
  CarDetailsData carDetailsData = CarDetailsData(Get.find()); 
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;


  int? selectedCar;
  List cars = [];
  // List? carId = [];
  String? carId;

  @override
  getData() async {
    cars.clear();
    var statusRequest = StatusRequest.loading;
    var response = await carDetailsData.getCarDetails();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        
        cars.addAll(response['data']);
        
        var carsId = cars[0]['idVoiture'];
        print("the selected car is :$carsId"); 
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    initData();
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

  bookKnowButton() {

  }

  @override
  goToBookingPage(int selectedCar) {
    Get.toNamed(AppRout.bookingNowPage, arguments: {
      'selectedCar': selectedCar,
    }); 
  } 
  
}
