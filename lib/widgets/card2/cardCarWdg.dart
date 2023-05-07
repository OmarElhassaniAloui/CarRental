import 'package:carrental/view/screens/card_details.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/maki_icons.dart';

class CarCard extends StatelessWidget {
  int? id;
  String? title;
  double? pricePerHour;
  double? pricePerDay;
  double? pricePerMonth;
  String? ImagePath;
  String? color;
  String? Seats;
  String? fuel;
  String? brand;
  int? rate;
  String? auto;

  CarCard({
    super.key,
    @required this.id,
    @required this.title,
    @required this.pricePerHour,
    @required this.pricePerDay,
    @required this.pricePerMonth,
    @required this.ImagePath,
    @required this.color,
    @required this.Seats,
    @required this.fuel,
    @required this.brand,
    @required this.rate,
    @required this.auto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shadowColor: Colors.grey,
      elevation: 4,
      color: Color.fromARGB(255, 240, 241, 241),
      child: Container(
        height: 220,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 39, 57),
                      ),
                      width: 130,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.event_seat_sharp,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${Seats}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Entypo.flow_tree,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${auto}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Maki.fuel,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${fuel}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${rate}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: 10,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(),
                      child: Image.asset('${ImagePath}', fit: BoxFit.contain),
                    ),
                  ),
                ],
                clipBehavior: Clip.none,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 20, 5, 10),
                child: Column(
                  children: [
                    Text(
                      'MARUTI',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Vittara Brezza',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "\$${pricePerHour}",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "HOUR",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "\$${pricePerDay}",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "FULL DAY",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "\$ ${pricePerMonth}",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "MONTH",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => CardDetails()));
                      },
                      child: Text(
                        'Details',
                        style: TextStyle(
                            color: Color.fromARGB(255, 252, 252, 252)),
                      ),
                      style: TextButton.styleFrom(
                        fixedSize: Size(190, 10),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
