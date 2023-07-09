import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RentalFeesCard extends StatelessWidget {
  double? elevation;
  RentalFeesCard({super.key, this.elevation});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Card(
      elevation: elevation,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Rental Fees",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                //Row 1
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      //todo  hna khas dir variable ela hssab chhal mn nhar kra
                      child: Text(
                        "One Day rent",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text("Dh 400"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Row(
                //Row 2
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      //todo  hna khas dir variable ela hssab chhal mn nhar kra
                      child: Text(
                          "Total of ${myServices.sharedPreferences.getInt("numberOfDays")} days "),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text("Dh 6000.0"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Toral Fees",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  flex: 3,
                ),
                Expanded(
                  //todo calculer le total ?
                  child: Text(
                    "Dh ${myServices.sharedPreferences.getDouble("prixTotal")}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
