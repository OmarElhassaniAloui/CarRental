// import 'package:car/screens/home_screen.dart';
import 'package:carrental/controller/authControllers/login_controller.dart';
import 'package:carrental/core/constants/app_routs.dart';
import 'package:carrental/core/functions/alertExitApp.dart';
import 'package:carrental/view/screens/authScreens/reset_password.dart';
import 'package:carrental/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'registration.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
// import '../widgets/alertdialog.dart';

class LoginScreen extends GetView<LoginControllerImp> {
  LoginScreen({Key? key}) : super(key: key);

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginControllerImp());
    //email field
    final emailField = GetBuilder<LoginControllerImp>(
        init: LoginControllerImp(),
        builder: (controller) => TextFormField(
            autofocus: false,
            controller: controller.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Please Enter Your Email");
              }
              // reg expression for email validation
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
                return ("Please Enter a valid email");
              }
              return null;
            },
            onSaved: (value) {
              controller.email.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )));

    //password field
    final passwordField = GetBuilder<LoginControllerImp>(
        builder: (controller) => TextFormField(
            autofocus: false,
            controller: controller.password,
            obscureText: controller.showpassword,
            validator: (value) {
              RegExp regex = new RegExp(r'^.{6,}$');
              if (value!.isEmpty) {
                return ("Password is required for login");
              }
              if (!regex.hasMatch(value)) {
                return ("Enter Valid Password(Min. 6 Character)");
              }
            },
            onSaved: (value) {
              controller.password.text = value!;
            },
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                icon: Icon(
                  controller.showpassword == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                  // color: Colors.white,
                ),
                onPressed: () {
                  controller.showPassword();
                },
              ),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )));

    final loginButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF001253),
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) => MaterialButton(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
              controller.login();
            },
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));

    return Scaffold(
        // backgroundColor: Colors.white,
        body: WillPopScope(
      onWillPop: () async {
        return await alertExit();
      },
      child:  Center(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: GetBuilder<LoginControllerImp>(
                builder: (controller) => Form(
                  key: controller.formstate,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: Image.asset('assets/logo/logo.jpg'),
                      ),
                      SizedBox(height: 45),
                      emailField,
                      SizedBox(height: 25),
                      passwordField,
                      SizedBox(height: 35),
                      loginButton,
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRout.signup);
                              },
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ]),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ResetPassword());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
