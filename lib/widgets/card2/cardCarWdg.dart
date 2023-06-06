import 'package:carrental/data/model/carModel/car_model2.dart';
import 'package:carrental/widgets/details_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:carrental/core/constants/link_api.dart';

class CarCard extends StatelessWidget {
  int index;
  final CarModel2 carModel;

  CarCard({
    super.key,
    required this.carModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shadowColor: Colors.grey,
      elevation: 4,
      // color: Color.fromARGB(255, 240, 241, 241),
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
                                '${carModel.seats}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
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
                                '${carModel.auto}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
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
                                "${carModel.carburant}",
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
                                "${carModel.rate}",
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
                      child: Image.network(
                          '${AppLink.imageLink}/${carModel.photo1}',
                          fit: BoxFit.contain),
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
                      '${carModel.brand}',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${carModel.model}',
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
                              "\Dh ${carModel.pricePerDay}",
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
                              "\DH ${carModel.pricePerDay}",
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
                              "\DH ${carModel.pricePerDay}",
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
                    DetailButton(
                      index: index,
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
