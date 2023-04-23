import 'dart:ui';

import 'package:carrental/controller/changeThemController.dart';
import 'package:unicons/unicons.dart';
import 'package:get/get.dart';
import '../view/screens/Terms_and_conditions_page.dart';
import '../view/screens/faq_page.dart';
import '../view/screens/langage.dart';
import '../view/screens/my_booking.dart';
import '../view/screens/notification_Page.dart';
import '../view/screens/saved_page.dart';
import '../view/screens/support_page.dart';
import './alertdialog.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import '../view/screens/authScreens/login.dart';
import '../view/screens/my_prfile.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool switchVal = false;
  var themeController = Get.put(ThemController());
  // getUser() {
  //   var user = FirebaseAuth.instance.currentUser;
  //   if (user != null) {
  //     var name = user.displayName;
  //     var email = user.email;
  //   }
  // }

  @override
  // void initState() {
  //   getUser();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              accountName: Text('Omar Elhassani Alaoui'),
              accountEmail: Text('/{getUser()}'),
              currentAccountPicture: InkWell(
                child: Image.asset('assets/images/profile.png'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfileScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.person_outline),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text(' My Profile'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return ProfileScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.car_rental_rounded),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('My Booking'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return MyBookingPage();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.notifications),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('Notification'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return NotificationsPage();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('Saved'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return SavedPage();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.headset_mic),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('Support'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return SupportPage();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.library_books_outlined),
                title: Text('Terms and conditions'),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return TermsAndConditions();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.question_mark_rounded),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('FAQs'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) {
                    return FAQsPage();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.logout_outlined),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('Log Out '),
                onTap: () async {
                  // showLoading(context);
                  // await FirebaseAuth.instance.signOut();

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) {
                      return LoginScreen();
                    }),
                  );
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.language),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  // color: Colors.black,
                ),
                title: Text('Choose language'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Langages();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: themeController.switchVal.value == true
                    ? Icon(Icons.wb_sunny)
                    : Icon(Icons.nightlight_round),
                trailing: Switch(
                  value: themeController.switchVal.value,
                  onChanged: (value) {
                    themeController.changeThem(value);
                  },
                ),
                title: Text('Change Theme'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
