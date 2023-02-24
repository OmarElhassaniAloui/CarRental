import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

double? totalsteps;
double? currentStep;

Widget cercularIndicator() {
  return Container(
    child: CircularStepProgressIndicator(
      totalSteps: 100,
      currentStep: 70,
      stepSize: 10,
      selectedColor: Color.fromARGB(255, 240, 105, 125),
      unselectedColor: Color.fromARGB(255, 225, 215, 215),
      padding: 0,
      width: 80,
      height: 80,
      selectedStepSize: 10,
      roundedCap: (_, __) => true,
    ),
  );
}
