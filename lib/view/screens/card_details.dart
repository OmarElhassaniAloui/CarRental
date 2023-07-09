import 'package:carrental/controller/car_details_controller.dart';
import 'package:carrental/controller/home_controller.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/data/model/carModel/car_model2.dart';
import 'package:carrental/view/screens/personal_info_pages/personal_info.dart';
import 'package:carrental/widgets/car_details_widgets/car_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:get/get.dart';

import '../../core/middelware/middelware.dart';
import '../../core/services/services.dart';

class CardDetails extends GetView<CarDetailsControllerImp> {
  //! la valeur de selectedCar doit etre recuperer depuis la page home

  CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CarDetailsControllerImp());
    var selectedCar = Get.arguments;
    MyServices myServices = Get.find();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Details',
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // print(selectedCar['selectedCar'] + 1);
                myServices.sharedPreferences
                    .setInt("idVoiture", selectedCar['selectedCar'] + 1);
                print(myServices.sharedPreferences.getInt('idVoiture'));
              },
              icon: Icon(
                Icons.favorite_border,
                size: 25,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            IconButton(
              onPressed: () {
                // print("client id is : ${myServices.sharedPreferences.getInt("idClient")}");
                print("prixTotal  is : ${myServices.sharedPreferences.getDouble("prixTotal")}");
                // print(myServices.sharedPreferences.getInt("idVoiture"));
              },
              icon: Icon(Icons.share, size: 25),
            ),
          ],
        ),
        body: controller.cars.isNotEmpty
            ? CarDetailsWidget(
                carModel: CarModel.fromJson(
                    controller.cars[selectedCar['selectedCar']]),
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
