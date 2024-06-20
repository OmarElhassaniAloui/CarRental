import 'package:carrental/core/class/crud.dart';
import 'package:carrental/core/constants/link_api.dart';

class MyFavoritData {
  Crud crud; 
  MyFavoritData(this.crud);  

  getFavoritData(String id ){ 
    var dataResponse = crud.postData(
      AppLink.favoritlink, {"id": id}
    );
  } 
  
  // deleteData(String id) async {
  //   var dataResponse = await crud.postData(AppLink.deletefromfavroite, {"id": id});
  //   return dataResponse.fold((l) => l, (r) => r);
  // }
}
