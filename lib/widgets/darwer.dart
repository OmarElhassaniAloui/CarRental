import 'dart:ui';

import './alertdialog.dart'; 

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import '../view/screens/login.dart';
import '../view/screens/my_prfile.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
                  color: Colors.black,
                ),
                title: Text(' My Profile'),
                onTap: () {},
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
                  color: Colors.black,
                ),
                title: Text('My Booking'),
                onTap: () {},
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
                  color: Colors.black,
                ),
                title: Text('Notification'),
                onTap: () {},
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
                  color: Colors.black,
                ),
                title: Text('Saved'),
                onTap: () {},
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
                  color: Colors.black,
                ),
                title: Text('Support'),
                onTap: () {},
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
                  color: Colors.black,
                ),
                onTap: () {},
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
                  color: Colors.black,
                ),
                title: Text('FAQs'),
                onTap: () {},
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
                  color: Colors.black,
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
          ],
        ),
      ),
    );
  }
}
