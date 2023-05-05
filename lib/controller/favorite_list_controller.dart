import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/functions/handlingData.dart';
import 'package:carrental/core/services/services.dart';
import 'package:carrental/data/datasrc/remot/favorit_list_data.dart';
import 'package:carrental/data/model/favorit_model.dart';
import 'package:get/get.dart';
class MyFavoriteController extends GetxController { 

  MyFavoritData favoriteData = MyFavoritData(Get.find());

  List<FavoritModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

//  key => id items
//  Value => 1 OR 0

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.getFavoritData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => FavoritModel.fromJson(e)));
        print("data");
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  deleteFromFavorite(String favroiteid) {
    data.clear();
    statusRequest = StatusRequest.loading;
    // var response = favoriteData.deleteData(favroiteid);
    // data.removeWhere((element) => element.favoriteId == favroiteid);
    update();
  }

  @override
  void onInit() {
    // search = TextEditingController();
    getData();
    super.onInit();
  }
}