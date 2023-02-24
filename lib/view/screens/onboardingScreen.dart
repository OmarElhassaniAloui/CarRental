import 'package:carrental/controller/onboarding_controller.dart';
import 'package:carrental/data/datasrc/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/onboardingWedgits/costum_onboarding_slider.dart';
import '../../widgets/onboardingWedgits/dot_controller.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: CostumOnBoardingSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CostumDotController(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
