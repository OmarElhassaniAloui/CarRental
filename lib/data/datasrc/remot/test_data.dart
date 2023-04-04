import '../../../core/class/crud.dart';
import '../../../core/constants/links.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.serverLink, { 
      
    }); 
  }  
  

}
