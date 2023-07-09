import 'package:carrental/core/class/crud.dart';
import 'package:carrental/core/constants/link_api.dart';

class FavoritData {
  Crud? crud;
  FavoritData(this.crud); 
  // add facorit
  addFavorite(String userId, String itemId) async {
    var dataResponse = await crud!.postData(
      AppLink.favoritlink,
       {
        "id":userId,  
        "favorit_car_id":itemId,  
       }
       );  
       return dataResponse.fold((l) => l, (r) => r);
  }  
  //remove favorit 
  removeFavorite(String usersid ,String itemsid)async {

    var response = await crud!.postData(
        AppLink.favoritlink,
         {
          "usersid": usersid,
          "itemsid": itemsid
          }
        );
    return response.fold((l) => l, (r) => r);

  }

}
