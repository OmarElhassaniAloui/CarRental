import 'package:carrental/core/class/crud.dart';
import 'package:carrental/core/constants/link_api.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata(String email ,String password) async {
    var response = await crud.postData(AppLink.loginLink, {
      "email" : email , 
      "password" : password,   
    });
    return response.fold((l) => l, (r) => r);
  }
} 
