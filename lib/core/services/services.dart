import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences shared_Preferences; 

  Future<MyServices> init() async {
    shared_Preferences = await SharedPreferences.getInstance();
    return this; 
  } 
  
} 

initialServices() async {
  await Get.putAsync(() => MyServices().init()) ; 
}

