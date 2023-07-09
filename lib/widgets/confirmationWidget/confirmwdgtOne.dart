import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/services/services.dart';

class ConfirmationCardOne extends StatelessWidget {
  const ConfirmationCardOne({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices _services = Get.put(MyServices());
    return Card(
      child: Container(
        padding: EdgeInsets.all(15),
        height: 300,
        width: double.infinity,
        // color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("${_services.sharedPreferences.getString("fullname")}"),
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile Number",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                      "${_services.sharedPreferences.getString("phoneNumber")}"),
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("${_services.sharedPreferences.getString("email")}"),
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "National ID",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text("U12*******"),
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
          ],
        ),
      ),
    );
  }
}
