
import 'package:carrental/core/class/crud.dart';
import 'package:carrental/core/constants/link_api.dart';

class CarDetailsData { 
  Crud crud; 
  CarDetailsData(this.crud);
  getCarDetails() async {
    var dataResponse = await crud.postData( 
      AppLink.carsLink , {}
    );
    return dataResponse.fold((l) => l, (r) => r);
  }
  
} 
