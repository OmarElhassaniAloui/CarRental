import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/functions/handlingData.dart';
import 'package:carrental/core/services/services.dart';
import 'package:carrental/data/datasrc/remot/favorit_data.dart';
import'package:flutter/material.dart';   
import 'package:get/get.dart'; 

class FavoritControllerImp extends GetxController {
  //Todo khasni njib data mn el Model ... 
  FavoritData? favoritData = FavoritData(Get.find()); 


  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  Map isFavorite = {};

//  key => id items
//  Value => 1 OR 0

  setFavorite(id, val) {
    isFavorite[id] = val;
    update();
  }

  addFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoritData!.addFavorite(

        myServices.shared_Preferences.getString("id")!, itemsid); 
        
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم اضافة المنتج من المفضلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  removeFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoritData!.removeFavorite(
        myServices.shared_Preferences.getString("id")!, itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم حذف المنتج من المفضلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }
  
  

  
}