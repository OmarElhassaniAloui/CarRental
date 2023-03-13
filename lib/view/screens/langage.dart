import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/langagesWdjt/button_lang.dart';

class Langages extends StatelessWidget {
  const Langages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                )),
            const SizedBox(
              height: 20,
            ),
            CostumButtonLang(
              txtButton: 'Ar',
              onPressed: () {},
            ),
            CostumButtonLang(
              txtButton: 'Fr',
              onPressed: () {},
            ),
            CostumButtonLang(
              txtButton: 'Eng',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
