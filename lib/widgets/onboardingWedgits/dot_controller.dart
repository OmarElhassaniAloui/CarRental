import 'package:carrental/controller/onboarding_controller.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/datasrc/static/static.dart';
import '../../view/screens/authScreens/login.dart';

class CostumDotController extends GetView<OnboardingControllerImp> {
  const CostumDotController({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find<MyServices>();
    return GetBuilder<OnboardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                  ),
                  onTap: () {
                    myServices.sharedPreferences.setString("onboarding", '1');
                    Get.toNamed(AppRout.login);
                  },
                ),
                const Spacer(),
                ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 4),
                    duration: Duration(milliseconds: 900),
                    height: 4,
                    width: controller.currentPage == index ? 20 : 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    controller.currentPage == onBoardingList.length - 1
                        ? Get.toNamed(AppRout.login)
                        : controller.next();
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      controller.currentPage == onBoardingList.length - 1
                          ? "Login"
                          : "Next",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ));
  }
}
