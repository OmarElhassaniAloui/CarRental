import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickUpTimeCard extends StatelessWidget {
  PickUpTimeCard({super.key});
  MyServices _services = Get.find(); 

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Expanded(
                //   flex: 4,
                //   child: Container(
                //     child: Text("Pick up and return ",
                //         style: TextStyle(fontWeight: FontWeight.bold)),
                //   ),
                // ),
                // Expanded(
                //   flex: 2,
                //   child: Container(
                //     child: TextButton.icon(
                //       onPressed: () {},
                //       icon: Icon(Icons.edit_square),
                //       label: Text("Change"),
                //     ),
                //   ),
                // ),
              ],
            ),
            // Text("Errachidia-arfoud"),
            SizedBox(
              height: 6,
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Text("Tripe Date ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.edit_square),
                      label: Text("Change"),
                    ),
                  ),
                ),
              ],
            ),
            Text(
                "${_services.sharedPreferences.get("departTripTime")}-${_services.sharedPreferences.get("returnDateAndTime")}"),
            SizedBox(
              height: 6,
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
