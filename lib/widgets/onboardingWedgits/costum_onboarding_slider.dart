import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import '../../data/datasrc/static/static.dart';

class CostumOnBoardingSlider extends GetView<OnboardingControllerImp > {
  const CostumOnBoardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val); 
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          // todo : dir style
          SizedBox(
            height: 20,
          ),
          Image.asset(
            onBoardingList[i].img!,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            onBoardingList[i].title!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].desctriptionText!,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
