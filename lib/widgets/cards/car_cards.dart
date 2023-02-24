import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';


class CarCards extends StatelessWidget {
  double? price;
  String? name;
  String? name2;
  CarCards({
    Key? key,
    this.name,
    this.name2,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: price == null ? 80 : 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        // borderRadius: BorderRadius.circular(10),
      ),
      child: price == null
          ? Column(
              children: [
                Text(
                  name!,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name2!,
                  style: SubHeading,
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  name!,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  price.toString(),
                  style: SubHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(name2!)
              ],
            ),
    );
  }
}
