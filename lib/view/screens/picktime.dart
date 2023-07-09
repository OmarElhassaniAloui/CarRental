import 'package:carrental/core/services/services.dart';
import 'package:carrental/view/screens/personal_info_pages/identification.dart';
import 'package:carrental/view/screens/personal_info_pages/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:get/get.dart';

import '../../controller/reservation_controllers/date_time_picker_controller.dart';
import '../../widgets/costum_button.dart';

class PickdateAndTime extends GetView<DateTimePickerControllerImp> {
  PickdateAndTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DateTimePickerControllerImp());
    MyServices myServices = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Date and Time'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<DateTimePickerControllerImp>(
            builder: (controller) => Form(
              key: controller.formstate,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Departure Date and Time',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DateTimePicker(
                      type: DateTimePickerType.dateTime,
                      dateMask: 'dd-MM-yyyy HH:mm',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(Icons.event),
                      dateLabelText: 'Date',
                      timeLabelText: "Hour",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Date and Time',
                        hintText: 'Enter the date and time of your trip',
                        prefixIcon: Icon(Icons.event),
                      ),
                      onSaved: (val) {
                        controller.departTripTime.text = val.toString();
                        controller.calculateNumberOfDays();
                        print(val);
                      },
                      validator: (val) {
                        // validation of the date
                        if (val!.isEmpty) {
                          return 'Please enter the date of departure';
                        }
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Return Date and Time',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DateTimePicker(
                      type: DateTimePickerType.dateTime,
                      dateMask: 'dd-MM-yyyy HH:mm',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(Icons.event),
                      dateLabelText: 'Date',
                      timeLabelText: "Hour",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Chous Date and Time',
                        hintText: 'Enter the date of return',
                        prefixIcon: Icon(Icons.event),
                      ),
                      // onChanged: (val) {
                      //   controller.returnDateAndTime.text = val;
                      // },
                      onSaved: (val) {
                        controller.returnDateAndTime.text = val.toString();
                        controller.calculateNumberOfDays();
                        print(val);
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please enter the date of return';
                        }
                      },
                    ),
                  ),
                  //sizebox
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: GetBuilder<DateTimePickerControllerImp>(
                      builder: (controller) => Text(
                        'Number of Days: ${controller.numberOfDays}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //save button
                  Container(
                    width: double.infinity,
                    child: GetBuilder<DateTimePickerControllerImp>(
                      builder: (controller) {
                        return OutlinedButton(
                          onPressed: () {
                            // Save the date and time
                            controller.saveData();
                            // Calculate the number of days
                            controller.calculateNumberOfDays();

                            // Print the number of days
                            print(controller.numberOfDays);
                            print("prixTotal =${controller.calculePrixTotal()}");
                            myServices.sharedPreferences.setDouble("prixTotal", controller.calculePrixTotal()) ; 
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFF495EAB),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                  // button next
                  CustomElevatedButton(
                    text: 'Next',
                    onPressed: () {
                      controller.nextButton();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
