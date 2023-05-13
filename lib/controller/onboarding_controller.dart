import 'package:carrental/core/services/services.dart';
import 'package:carrental/data/datasrc/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardngController extends GetxController {
  next();
  skip();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardngController {
  late PageController pageController;
  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
    if (currentPage >= onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("step", '1');
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  skip() {}

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
