import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExit() {
  Get.defaultDialog(
    title: "Warning",
    middleText: "Do you want to exit the app ?",
    actions: [
      TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text("No"),
      ),
      TextButton(
        onPressed: () {
          exit(0);
        },
        child: Text("Yes"),
      ),
    ],
  );
  return Future.value(true);
}
