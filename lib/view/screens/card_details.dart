import 'package:carrental/controller/car_details_controller.dart';
import 'package:carrental/controller/home_controller.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/data/model/carModel/car_model2.dart';
import 'package:carrental/view/screens/personal_info_pages/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';

class CardDetails extends GetView<CarDetailsControllerImp> {
  // final CarModel2 carModel;
  //! la valeur de selectedCar doit etre recuperer depuis la page home
  int? selectedCar = 0;
  CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CarDetailsControllerImp());
    // selectedCar = selectedCar! + 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //todo :  favorite function
            },
            icon: Icon(
              Icons.favorite_border,
              size: 25,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          IconButton(
            onPressed: () {
              //todo :  share function
            },
            icon: Icon(Icons.share, size: 25),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/car_images/car1.jpg"),
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
                          child: Image.asset("assets/car_images/car1.jpg"),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 60,
                          width: 60,
                          foregroundDecoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Image.asset("assets/car_images/car1.jpg"),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 60,
                          width: 60,
                          foregroundDecoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Image.asset("assets/car_images/car1.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // car spercification
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
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
                          controller.cars[selectedCar!]["brand"],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$ ${controller.cars[selectedCar!]["price_per_day"]}/day",
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
                          controller.cars[selectedCar!]["model"],
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
                          controller.cars[selectedCar!]["rate"].toString(),
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
                        color: Colors.black,
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
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("data"),
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
                                Icons.event_seat_sharp,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("data"),
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      controller.cars[selectedCar!]["description"],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: TextButton(
                onPressed: () {
                  // Get.toNamed(AppRout.personalInfPage);
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return PersonalInfo();
                  }));
                },
                child: Text("Book Now"),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  // primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  // textStyle: TextStyle(
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
