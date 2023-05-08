import 'package:carrental/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailButton extends GetView<HomeControllerImp> {
  int index;
  DetailButton({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return TextButton(
      onPressed: () {
        controller.goToCarDetails(index);
        print("index = $index");
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (builder) => CardDetails()));
      },
      child: Text(
        'Details',
        style: TextStyle(color: Color.fromARGB(255, 252, 252, 252)),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(190, 10),
        backgroundColor: Colors.green,
      ),
    );
  }
}
