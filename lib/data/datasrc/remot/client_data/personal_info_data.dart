import '../../../../core/class/crud.dart';
import '../../../../core/constants/link_api.dart';

class PersonalInfoData {
  Crud crud;  
  PersonalInfoData(this.crud);
  postPersonalInfodata(String fullName, String email, String phone_number, String address) async {
    var response = await crud.postData(AppLink.personalInfoLink, {
      "fullName": fullName,
      "email": email,
      "phone_number": phone_number,
      "address": address,
    });
    return response.fold((l) => l, (r) => r);
  }
}
