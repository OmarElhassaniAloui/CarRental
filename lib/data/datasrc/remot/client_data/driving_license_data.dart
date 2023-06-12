
import 'package:carrental/core/constants/link_api.dart';

import '../../../../core/class/crud.dart';

class DrivingLicenseData{
  Crud crud;  
  DrivingLicenseData(this.crud);  

  getDrivingLicenseData(String id , DateTime license_expiration_date , String photoFront  ,String photoBack ) async {
    var response = await crud.postData(AppLink.drivingLicenseLink,{ 
       "license_id":id  , 
       "license_expiration_date": license_expiration_date,
       "photoFront":photoFront, 
       "photoBack":photoBack , 
    });
    return response.fold((l) => l, (r) => r);
  } 
  
}
