import 'package:carrental/view/screens/Terms_and_conditions_page.dart';
import 'package:carrental/view/screens/authScreens/registration.dart';
import 'package:carrental/view/screens/booking_now.dart';
import 'package:carrental/view/screens/car_details.dart';
import 'package:carrental/view/screens/confirmationpage.dart';
import 'package:carrental/view/screens/home_screen.dart';
import 'package:carrental/view/screens/my_booking.dart';
import 'package:carrental/view/screens/my_prfile.dart';
import 'package:carrental/view/screens/notification_Page.dart';
import 'package:carrental/view/screens/onboardingScreen.dart';
import 'package:carrental/view/screens/personal_info_pages/driving_license.dart';
import 'package:carrental/view/screens/personal_info_pages/identification.dart';
import 'package:carrental/view/screens/personal_info_pages/payementPage.dart';
import 'package:carrental/view/screens/personal_info_pages/personal_info.dart';
import 'package:carrental/view/screens/picktime.dart';
import 'package:carrental/view/screens/success_page.dart';
import 'package:carrental/view/screens/support_page.dart';
import 'package:get/get.dart';

import 'core/constants/app_routs.dart';
import 'view/screens/authScreens/login.dart'; 


List<GetPage<dynamic>> routs =[ 
  GetPage(name: AppRout.homepage, page:()=> const Home()) , 
  GetPage(name: AppRout.login, page:()=>  LoginScreen()) , 
  GetPage(name: AppRout.bookingNowPage, page:()=>  BookingNowPage()) , 
  GetPage(name: AppRout.carDetails, page:()=>  CarDetails()) , 
  GetPage(name: AppRout.confirmationPage, page:()=>  ConfiramtionPage()) , 
  GetPage(name: AppRout.drivingLicensePage, page:()=>  DrivingLicensecPage()) , 
  GetPage(name: AppRout.identification, page:()=>  Identification()) , 
  GetPage(name: AppRout.myBookingPage, page:()=>  MyBookingPage()) , 
  GetPage(name: AppRout.myProfilePage, page:()=>  ProfileScreen()) , 
  GetPage(name: AppRout.notificationPage, page:()=>  NotificationsPage()) , 
  GetPage(name: AppRout.onBoardingScreen, page:()=>  OnBoardingPage()) , 
  GetPage(name: AppRout.paymentPage, page:()=>  PaymentPage()) , 
  GetPage(name: AppRout.personalInfPage, page:()=>  PersonalInfo()) , 
  GetPage(name: AppRout.pickTimePage, page:()=>  dateAndTimePicker()) , 
  GetPage(name: AppRout.signup, page:()=>  RegistrationScreen()) , 
  GetPage(name: AppRout.successPage, page:()=>  SuccessPage()) , 
  GetPage(name: AppRout.successPage, page:()=>  Home()) , 
  GetPage(name: AppRout.supportPage, page:()=>  SupportPage()) , 
  GetPage(name: AppRout.termsAndConditionsPage, page:()=>  TermsAndConditions()) , 
  


] ;  