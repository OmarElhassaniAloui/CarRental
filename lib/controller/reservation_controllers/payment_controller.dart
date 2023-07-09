import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constants/app_routs.dart';
import '../../core/functions/handlingData.dart';
import '../../core/services/services.dart';
import '../../data/datasrc/remot/reservation.dart';

class PaymentController extends GetxController {
  ReservationData reservationData = ReservationData(Get.find());
  List? data = [];
  // shared preferences
  MyServices myServices = Get.find();
  String? dateDebut;
  String? dateFin;
  int? carId;
  int? clientId;
  DateTime? dateReservation;
  double? prixTotal;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  void onInit() {
    dateDebut = myServices.sharedPreferences.getString("departTripTime");
    dateFin = myServices.sharedPreferences.getString("returnDateAndTime");
    carId = myServices.sharedPreferences.getInt("idVoiture");
    clientId = myServices.sharedPreferences.getInt("idClient");
    dateReservation = DateTime.now();
    prixTotal = myServices.sharedPreferences.getDouble("prixTotal");

    super.onInit();
  }

  showinfo() {
    print("date de debut = $dateDebut");
    print("date de fin = $dateFin");
    print("idVoitur= ${carId.runtimeType}");
    print("idclient= $clientId");
    print("date de reserv = $dateReservation");
    print("le prix totol = $prixTotal");
  }

  booking() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await reservationData.creatReservation(
      dateDebut!,
      dateFin!,
      carId!,
      clientId!,
      dateReservation!.toString(),
      prixTotal!,
    );
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.toNamed(AppRout.successPage);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Phone Number Or Email Already Exists");
        statusRequest = StatusRequest.failure;
      }
      update();
    }
  }
}
