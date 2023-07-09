import 'package:carrental/core/services/services.dart';
import 'package:carrental/data/model/carModel/car_model2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmationCard1 extends StatelessWidget {
  const ConfirmationCard1({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices _services = Get.put(MyServices());
    CarModel _carModel = Get.put(CarModel());
    var myServices;
    return Card(
      // color: Colors.white,
      child: Container(
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: Image.asset("assets/car_images/photo1.png"),
            ),
            SizedBox(
              width: 6,
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${_services.sharedPreferences.getString("car_marque")}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Fiesta",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Dh 400",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "|",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "day",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
