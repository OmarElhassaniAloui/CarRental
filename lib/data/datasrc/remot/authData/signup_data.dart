import 'package:carrental/core/class/crud.dart';
import 'package:carrental/core/constants/link_api.dart';
 
class SignupData {
  Crud crud;
  SignupData(this.crud); 


  // postdata(String username ,String password ,String email ,String phone ) async {
  //   var response = await crud.postData(AppLink.signUp, {
  //     "username" : username , 
  //     "password" : password  , 
  //     "email" : email , 
  //     "phone" : phone  , 
  //   });
  //   return response.fold((l) => l, (r) => r);
  // }


  postdata(String firstName ,String lastName ,String email ,String password , String confirm_password) async {
    var response = await crud.postData(AppLink.signUpLink, { 
      "firstName" : firstName , 
      "lastName" : lastName  , 
      "email" : email , 
      "password" : password  , 
      "confirm_password" : confirm_password  ,       
    });
    return response.fold((l) => l, (r) => r);
  }
} 

