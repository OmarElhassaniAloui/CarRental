import 'package:carrental/controller/home_controller.dart';
import 'package:carrental/core/class/crud.dart';
import 'package:carrental/data/model/carModel/car_model2.dart';
import 'package:carrental/widgets/card2/cardCarWdg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/constants.dart';
import '../../widgets/darwer.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

class Home extends GetView<HomeControllerImp> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    Get.put(Crud());
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text(
          "Car Rental ",
          style: SubHeading,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            scaffoldkey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: controller.cars.length,
          itemBuilder: (Context, i) {
            return CarCard(
              index: i,
              carModel: CarModel2.fromJson(controller.cars[i]),
            );
          },
        ),
      ),
    );
  }
}
