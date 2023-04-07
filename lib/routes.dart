import 'package:carrental/view/screens/home_screen.dart';
import 'package:get/get.dart';

import 'core/constants/app_routs.dart';
import 'view/screens/authScreens/login.dart'; 


List<GetPage<dynamic>> routs =[ 

  GetPage(name: AppRout.homepage, page:()=> const Home()) , 
  GetPage(name: AppRout.login, page:()=>  LoginScreen()) , 
  GetPage(name: AppRout.bookingNowPage, page:()=> const Home()) , 
  GetPage(name: AppRout.carDetails, page:()=> const Home()) , 
  GetPage(name: AppRout.confirmationPage, page:()=> const Home()) , 
  GetPage(name: AppRout.drivingLicensePage, page:()=> const Home()) , 
  GetPage(name: AppRout.identification, page:()=> const Home()) , 
  GetPage(name: AppRout.myBookingPage, page:()=> const Home()) , 
  GetPage(name: AppRout.myProfilePage, page:()=> const Home()) , 
  GetPage(name: AppRout.notificationPage, page:()=> const Home()) , 
  GetPage(name: AppRout.onBoardingScreen, page:()=> const Home()) , 
  GetPage(name: AppRout.paymentPage, page:()=> const Home()) , 
  GetPage(name: AppRout.personalInfPage, page:()=> const Home()) , 
  GetPage(name: AppRout.pickTimePage, page:()=> const Home()) , 
  GetPage(name: AppRout.signup, page:()=> const Home()) , 
  GetPage(name: AppRout.successPage, page:()=> const Home()) , 
  GetPage(name: AppRout.successPage, page:()=> const Home()) , 
  GetPage(name: AppRout.supportPage, page:()=> const Home()) , 
  GetPage(name: AppRout.termsAndConditionsPage, page:()=> const Home()) , 
  


] ;  