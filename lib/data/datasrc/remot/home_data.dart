import 'package:carrental/core/class/crud.dart';
import 'package:carrental/core/constants/link_api.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getAllCars() async {
    var dataResponse = await crud.postData(AppLink.carsLink, {});
    return dataResponse.fold((l) => l, (r) => r);
  }
  //todo : searchData func ...
}
