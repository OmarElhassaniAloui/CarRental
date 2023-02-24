import 'package:flutter/material.dart';
import 'view/screens/home_screen.dart';
import 'view/screens/login.dart';
import './core/constants/them.dart';
import 'view/screens/onboardingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? shardPref; 
bool? isLogin = false;

void main() {
  //todo : ila l utilisateur deja dar login ddih l'home page

  // async and awit required
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // var user = FirebaseAuth.instance.currentUser;
  // if (user == null) {
  //   isLogin = false;
  // } else {
  //   isLogin = true;
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final theme = myTheme.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental Car ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isLogin == false ? OnBoardingPage() : Home(),
      routes: {},
    );
  }
}
