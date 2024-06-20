import '../../../../core/class/crud.dart';
import '../../../../core/constants/link_api.dart';

class PersonalInfoData {
  Crud crud;  
  PersonalInfoData(this.crud);
  // get data
  postPersonalInfodata(String firstName ,String lastName ,String email, String phone_number, String address) async {
    var response = await crud.postData(AppLink.personalInfoLink, {
      "Prenom": lastName,
      "Nom": firstName,
      "Email": email,
      "Telephon": phone_number,
      "address": address,
    });
    return response.fold((l) => l, (r) => r);
  } 
  // update data 
  updatePersonalInfodata(String firstName,String lastName ,  String email, String phone_number, String address) async {
    var response = await crud.postData(AppLink.personalInfoLink, {
      "Nom": firstName,
      "Prenom": lastName,
      "Email": email,
      "Telephon": phone_number,
      "address": address,
    });
    return response.fold((l) => l, (r) => r);
  }
  getPersonalInfodata() async {
    var response = await crud.postData(AppLink.getClientId , {
      
    });
    return response.fold((l) => l, (r) => r);
  }





}
