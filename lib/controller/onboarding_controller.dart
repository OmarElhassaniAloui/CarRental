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

  @override
  next() { 
    currentPage++ ; 
    pageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
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
