import 'package:flutter/material.dart';

class PickUpTimeCard extends StatelessWidget {
  const PickUpTimeCard({super.key});

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
            Text("13 July, 22:46 pm-28 July, 22:46 pm"),
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
