import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';

import '../../widgets/confirmationWidget/RentalFeesCard.dart';
import '../../widgets/costum_button.dart';
import 'home_screen.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 235, 233, 233),
      appBar: AppBar(
        title: const Text('Success '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.check_circle_outline_rounded,
                    size: 100,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Booked Successfully",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                          "You've Booked ${myServices.sharedPreferences.getString("car_marque")} Fiesta Successfully\n Go to My Booking For More Booking Details"),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      child: Text("Summary",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 27)),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Car",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text(
                                "${myServices.sharedPreferences.getString("car_marque")}",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Container(
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text("Pick-up and Return ",
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold, fontSize: 20)),
                    //         Text("Errachidia-Boutalamin",
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold, fontSize: 18)),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Trip-Dates",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text("13 July, 22:46 pm-28 July, 22:46 pm ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RentalFeesCard(elevation: 5),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: 'Back To Home',
                    onPressed: () {
                      Get.to(() => Home());
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
