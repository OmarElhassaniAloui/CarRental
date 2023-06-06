import 'package:carrental/data/model/test_Model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '';
import '../../controller/test_controller.dart';
import '../../core/class/handling_data_view.dart';
import '../../widgets/testWgt.dart';

class testView extends GetView<TestController> {
  const testView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('TestView'),
        ),
        body: GetBuilder<TestController>(
          builder: (controller) => Container(
              child: Column(
            children: [
              Text("${controller.data.length}"),
              // TextButton(
              //   onPressed: () async {
              //     await controller.getData();
              //   },
              //   child: const Text('getData'),
              // ),
              HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Expanded(
                  child: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      return testwdgt(
                        index: index,
                        data: Data.fromJson(controller.data[index]),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
