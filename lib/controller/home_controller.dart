import 'package:carrental/core/constants/app_routs.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initData();
  getData();
  goToBookingPage(int selectedCar);
}

class HomeControllerImp extends HomeController {
  //todo : implement HomeController
@override
  initData() { 
    //todo : implement initData
  }
 @override
  getData(){}
 @override
  goToBookingPage(selectedCar){ 
    Get.toNamed(AppRout.bookingNowPage, arguments: selectedCar) ;  
  }
}
