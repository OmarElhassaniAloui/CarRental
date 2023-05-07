import 'package:carrental/core/constants/appThem.dart';
import 'package:carrental/core/services/services.dart';
import 'package:carrental/routes.dart';
import 'package:flutter/material.dart';
import 'binding/initalbinding.dart';
import 'core/localization/Change_langue.dart';
import 'core/localization/translation.dart';
import 'view/screens/home_screen.dart';
import './core/constants/them.dart';
import 'view/screens/onboardingScreen.dart';
import 'package:get/get.dart';

bool? isLogin = false;
void main() {
  //todo : ila l utilisateur deja dar login ddih l'home page
  // WidgetsFlutterBinding.ensureInitialized();
  // await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ChangeLangController controller = Get.put(ChangeLangController());
    final theme = MyTheme.dark;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental Car ',
      // locale: controller.langInitial,
      translations: Translation(),
      initialBinding: InitialBinding(),
      theme: AppTheme.darkTheme,
      home: isLogin == false ? OnBoardingPage() : Home(),
      getPages: routs ,
    );
  }
}
