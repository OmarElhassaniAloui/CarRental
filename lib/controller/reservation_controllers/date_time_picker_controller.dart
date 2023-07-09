import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class DateTimePickerController extends GetxController {
  Future<void> postDateTimePicker();
  // Future<void> getDateTimePicker();
  // Future<void> updateDateTimePicker();
}

class DateTimePickerControllerImp extends DateTimePickerController {
  // text controllers
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController departTripTime;
  late TextEditingController returnDateAndTime;

  MyServices myServices = Get.find();

  int numberOfDays = 0;
  Color buttonColor = Color(0xFF001253);
  double prixTotal = 0.0;
  void calculateNumberOfDays() {
    try {
      DateTime departureDate = DateTime.parse(departTripTime.text);
      DateTime returnDate = DateTime.parse(returnDateAndTime.text);

      print("the return dat is $returnDate days");

      Duration difference = returnDate.difference(departureDate);

      numberOfDays = difference.inDays;

      if (numberOfDays < 0) {
        numberOfDays = 0;
      }
    } catch (e) {
      print("error parsing the date $e");
    }

    update();
  }
  // calcule prix total
  double calculePrixTotal(){ 
    if (numberOfDays > 0) {
      prixTotal = numberOfDays * 400; 
    }
    return prixTotal;
  }
  // validation
  void saveData() {
    if (formstate.currentState!.validate()) {
      formstate.currentState!.save();

      print('Data saved!');
      print('Number of Days: ${this.numberOfDays}'); 

      myServices.sharedPreferences.setString(
        "departTripTime",
        departTripTime.text,
      ); 
      myServices.sharedPreferences.setString(
        "returnDateAndTime",
        returnDateAndTime.text,
      ); 
      myServices.sharedPreferences.setInt(
        "numberOfDays",
        numberOfDays,
      ); 


      Get.showSnackbar(
        GetSnackBar(
          message: 'Date is saved!',
          duration: Duration(seconds: 2),
          icon: Icon(Icons.check, color: Colors.white),
          backgroundColor: Colors.green,
          title: 'Success',
        ),
      );

      update();
    } else {
      Get.showSnackbar(
        GetSnackBar(
          message: 'Date is not saved!',
          duration: Duration(seconds: 2),
          icon: Icon(Icons.error, color: Colors.white),
          backgroundColor: Colors.red,
          title: 'Error',
        ),
      );

      update();
    }
  }

  void nextButton() {
    if (numberOfDays > 0) {
      Get.toNamed(AppRout.personalInfPage);
    } else {
      Get.dialog(
        AlertDialog(
          title: Row(
            children: [
              Icon(Icons.warning, color: Colors.red),
              SizedBox(
                width: 10,
              ),
              Text(
                'Warning !',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          content: Text('Please Chouse Date and Time '),
          actions: [
            TextButton(
              onPressed: () {
                // Perform some action
                Get.back();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  Color changeButtonColor() {
    print("3adad layam  is $numberOfDays");
    numberOfDays != 0
        ? buttonColor == Color(0xFF001253)
        : buttonColor == Color(0xFF495EAB);
    return buttonColor;
  }

  //  post data
  @override
  Future<void> postDateTimePicker() {
    throw UnimplementedError();
  }

  //intial data
  @override
  void onInit() {
    departTripTime = TextEditingController();
    returnDateAndTime = TextEditingController();

    bool isSelectableDay(DateTime day) {
      // Disable weekends and future dates
      return day.weekday != 6 &&
          day.weekday != 7 &&
          day.isBefore(DateTime.now());
    }

    super.onInit();
  }

  @override
  void onClose() {
    departTripTime.dispose();
    returnDateAndTime.dispose();
    super.onClose();
  } 
  goToPersonalInfo(){ 
    Get.toNamed( 
      AppRout.personalInfPage  , 
      arguments: { 
        "departTripTime": departTripTime.text,
        "returnDateAndTime": returnDateAndTime.text,
        "numberOfDays": numberOfDays,
      }
    );
    
  }
}
