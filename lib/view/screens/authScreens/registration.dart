import 'package:carrental/controller/authControllers/signup_controller.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../home_screen.dart';

import 'dart:io';
import 'login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // final _auth = FirebaseAuth.instance;

  //! string for displaying the error Message
  String? errorMessage;
  //! chosing Role  ;
  // var valueChoose = 'client';
  // List roleItems = ['Client ', 'Admin'];
  // var role = 'client ';

  //! our form key
  // final _formKey = GlobalKey<FormState>();
  //! editing Controller
  // final firstNameEditingController = TextEditingController();
  // final secondNameEditingController = TextEditingController();
  // final emailEditingController = TextEditingController();
  // final passwordEditingController = TextEditingController();
  // final confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    //! first name field
    final firstNameField = GetBuilder<SignUpControllerImp>(
        init: SignUpControllerImp(),
        builder: (controller) => TextFormField(
            autofocus: false,
            controller: controller.firstName,
            keyboardType: TextInputType.name,
            validator: (value) {
              RegExp regex = new RegExp(r'^.{3,}$');
              if (value!.isEmpty) {
                return ("First Name cannot be Empty");
              }
              if (!regex.hasMatch(value)) {
                return ("Enter Valid name(Min. 3 Character)");
              }
              return null;
            },
            onSaved: (value) {
              controller.firstName.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "First Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )));

    //!second name field
    final secondNameField = GetBuilder<SignUpControllerImp>(
        builder: (controller) => TextFormField(
            autofocus: false,
            controller: controller.lastName,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Second Name cannot be Empty");
              }
              return null;
            },
            onSaved: (value) {
              controller.lastName.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Second Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )));

    // cin field
    // final cinField = TextFormField(
    //   autofocus: false,
    //   controller: cinControler,
    //   keyboardType: TextInputType.text,
    //   validator: (text) {
    //     if (text!.isEmpty) {
    //       return ('please Enter your Cin');
    //     }
    //     if (!RegExp("^()").hasMatch(text)) {
    //       return ('please Enter your real CIN ');
    //     }
    //     return null;
    //   },
    //   onSaved: (text) {
    //     cinControler.text = text!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.perm_identity),
    //     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //     hintText: "CIN",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //   ),
    // );

    //!email field
    final emailField = GetBuilder<SignUpControllerImp>(
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
              ),
            ));
    //!password field
    final passwordField = GetBuilder<SignUpControllerImp>(
        builder: (controller) => TextFormField(
            autofocus: false,
            controller: controller.password,
            obscureText: true,
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
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )));

    //! confirm password field
    final confirmPasswordField = GetBuilder<SignUpControllerImp>(
        builder: (controller) => TextFormField(
            autofocus: false,
            controller: controller.confirm_password,
            obscureText: true,
            validator: (value) {
              if (controller.confirm_password.text !=
                  controller.password.text) {
                return "Password don't match";
              }
              return null;
            },
            onSaved: (value) {
              controller.confirm_password.text = value!;
            },
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Confirm Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )));

    //! signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: GetBuilder<SignUpControllerImp>(
        builder: (controller) => MaterialButton(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
              controller.signUp();
            },
            child: Text(
              "SignUp",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
//! chosing role dropdown menu
    // final chosingRole = Container(
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.grey, width: 1),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: DropDownMenu(),
    // );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            //! passing this to our root
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: GetBuilder<SignUpControllerImp>(
                builder: (controller) {
                  return Form(
                    key: controller.formstate,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 200,
                            child: Image.asset(
                              "assets/logo/logo.jpg",
                        )),
                        SizedBox(height: 45),
                        firstNameField,
                        SizedBox(height: 20),
                        secondNameField,
                        SizedBox(height: 20),
                        emailField,
                        SizedBox(height: 20),
                        passwordField,
                        SizedBox(height: 20),
                        confirmPasswordField,
                        SizedBox(height: 20),
                        signUpButton,
                        SizedBox(height: 15),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
