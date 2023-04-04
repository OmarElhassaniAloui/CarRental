import 'package:flutter/material.dart';

class RentalFeesCard extends StatelessWidget {
  double? elevation;
  RentalFeesCard({super.key, this.elevation});

  @override
  Widget build(BuildContext context) {
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
                    flex: 1,
                    child: Container(
                      child: Text("\$200"),
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
                      child: Text("Total of 3 days "),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text("\$600"),
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
                    "\$600.00",
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
