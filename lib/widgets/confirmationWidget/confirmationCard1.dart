import 'package:flutter/material.dart';

class ConfirmationCard1 extends StatelessWidget {
  const ConfirmationCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: Image.asset("assets/car_images/carpng.png"),
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
                      "Mercedes",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Bens w176",
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
                      text: "\$200",
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
