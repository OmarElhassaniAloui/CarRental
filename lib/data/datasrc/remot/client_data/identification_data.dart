import '../../../../core/class/crud.dart';
import '../../../../core/constants/link_api.dart';

class IdentificationData { 
  // TODO: if the user choose national id card or passport 

  Crud crud; 
  IdentificationData(this.crud);
  postIdentification(
    // int idClient,
    String nationalId ,String photoNationalIdFront , String photoNationalIdBack     )async { 
    var response = await crud.postData(AppLink.identificationLink, {  
      // "id_client":idClient,  
      "national_id":nationalId, 
      "photoFront":photoNationalIdFront,
      "photoBack":photoNationalIdBack,
    }); 
    return response.fold((l) => l, (r) => r); 
    
    
  }
}
