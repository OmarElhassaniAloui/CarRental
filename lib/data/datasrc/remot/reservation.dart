import 'package:carrental/core/constants/link_api.dart';

import '../../../core/class/crud.dart';

class ReservationData {
  Crud crud;
  ReservationData(this.crud);
  creatReservation(
    String dateDebut ,  
    String dateFin ,  
    int carId , 
    int clientId  , 
    String dateReservation , 
    double prixTotal ,  
  ) async {
    var response = await crud.postData(AppLink.reservationLink , {
        "DateDebut":dateDebut , 
        "DateFin":dateFin , 
        "idVoiture":carId , 
        "idClient":clientId , 
        "dateReservation":dateReservation , 
        "prixTotal":prixTotal , 
    }); 
    return response.fold((l) => l, (r) => r);
  }

  getReservation() async {
    var response = await crud.postData(AppLink.reservationLink , {});
    return response.fold((l) => l, (r) => r);
  }
}
