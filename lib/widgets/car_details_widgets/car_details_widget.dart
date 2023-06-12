import 'package:carrental/controller/car_details_controller.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/constants/link_api.dart';
import 'package:carrental/data/model/carModel/car_model2.dart';
import 'package:carrental/view/screens/personal_info_pages/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';

import '../costum_button.dart';

class CarDetailsWidget extends StatelessWidget {
  final CarModel2 carModel;

  CarDetailsWidget({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: ListView(
        children: [
          Container(
            height: 210,
            width: 210,
            // color: Colors.white,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            padding: EdgeInsets.only(top: 5, left: 10, right: 10),
            child: Card(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.network(
                          '${AppLink.imageLink}/${carModel.photo1}'),
                    ),
                    Spacer(),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            foregroundDecoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Image.network(
                                '${AppLink.imageLink}/${carModel.photo1}'),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 60,
                            width: 60,
                            foregroundDecoration: BoxDecoration(
                              border: Border.all(
                                // color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Image.network(
                                '${AppLink.imageLink}/${carModel.photo1}'),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 60,
                            width: 60,
                            foregroundDecoration: BoxDecoration(
                              border: Border.all(
                                // color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Image.network(
                                '${AppLink.imageLink}/${carModel.photo1}'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          // car spercification
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              // color: Colors.white,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  // color: Colors.black,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "${carModel.brand}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\DH ${carModel.pricePerDay}/day",
                          // "\$ ${controller.cars[selectedCar!]["price_per_day"]}/day",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "${carModel.model}",
                          // controller.cars[selectedCar!]["model"],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "${carModel.rate}",
                          // controller.cars[selectedCar!]["rate"].toString(),
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesome5.star,
                          // Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    thickness: 1.5,
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "car spercification",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        // color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.event_seat_sharp,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("5 Seats"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesome5.sitemap,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Auto TX"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesome5.map_marked_alt,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Conditioner"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Linecons.key,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Keyless"),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesome5.search_location,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Navigation"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      // flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesome5.plug,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("USB"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                // Icons.navigation_sharp,
                                Typicons.temperatire,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Auto Temp"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.bluetooth_audio,
                                // color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Bluetooth"),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Divider(
                    thickness: 1.5,
                    height: 30,
                  ),
                  // car description
                  Container(
                    child: Text(
                      "car description",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        // color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "${carModel.description}",
                      // controller.cars[selectedCar!]["description"],
                      style: TextStyle(
                        fontSize: 20,
                        // color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            // child: TextButton(
            //   onPressed: () {
            //     Get.toNamed(AppRout.pickTimePage);
            //   },
            //   child: Text("Book Now"),
            //   style: TextButton.styleFrom(
            //     backgroundColor: Colors.black,
            //     // primary: Colors.white,
            //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            //     // textStyle: TextStyle(
            //     //   fontSize: 20,
            //     //   fontWeight: FontWeight.bold,
            //     // ),
            //   ),
            // ),
            child: CustomTextButton(
              paddingH: 30,
              paddingV: 20,
              text: "Book Now",
              onPressed: () {
                Get.toNamed(AppRout.pickTimePage);
              },
            ),
          )
        ],
      ),
    );
  }
}
