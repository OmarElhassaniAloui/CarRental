import 'dart:ui';

import 'package:flutter/material.dart';

class CarCardss extends StatefulWidget {
  CarCardss({Key? key}) : super(key: key);

  @override
  State<CarCardss> createState() => _CarCardssState();
}

class _CarCardssState extends State<CarCardss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          borderOnForeground: true,
          shadowColor: Colors.grey,
          elevation: 4,
          color: Color.fromARGB(255, 240, 241, 241),
          child: Container(
            height: 230,
            width: 400,
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
                          width: 160,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.event_seat_sharp,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '5 seats',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.event_seat_sharp,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Auto',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
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
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(),
                          child: Image.asset('assets/car_images/carpng.png',
                              fit: BoxFit.contain),
                        ),
                      ),
                    ],
                    clipBehavior: Clip.none,
                  ),
                ),
                Container(
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
                        height: 10,
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
                        children: [
                          Column(
                            children: [
                              Text(
                                r"$15",
                                style: TextStyle(
                                  fontSize: 22,
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
                          // VerticalDivider(
                          //   color: Colors.red,
                          //   width: 10,
                          //   indent: 10,
                          //   endIndent: 10,
                          //   thickness: 2,
                          // ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                r"$50",
                                style: TextStyle(
                                  fontSize: 22,
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
                                r"$150",
                                style: TextStyle(
                                  fontSize: 22,
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
                        onPressed: () {},
                        child: Text(
                          'Book Now',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
