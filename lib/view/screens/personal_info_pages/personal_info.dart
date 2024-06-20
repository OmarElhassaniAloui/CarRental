// import 'package:car/screens/personal_info_pages/identification.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:carrental/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../controller/reservation_controllers/client_controllers/personal_info_controller.dart';
import '../../../data/model/client/clientModel/clientModel.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../widgets/costum_button.dart';
import 'identification.dart';

class PersonalInfo extends GetView<PersonalInfoControllerImp> {
  PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PersonalInfoControllerImp());

    MyServices myServices = Get.find();
    final nextButton = GetBuilder<PersonalInfoControllerImp>(
        init: PersonalInfoControllerImp(),
        builder: (controller) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextButton(
              text: 'Next',
              paddingH: 20,
              paddingV: 15,
              onPressed: () {
                controller.postPersonalInfo();
                controller.getPersonalInfo();
                myServices.sharedPreferences.setString("fullname",
                    controller.firstName.text +" "+ controller.lastName.text);
                myServices.sharedPreferences
                    .setString("phoneNumber", controller.phone_number.text);
                myServices.sharedPreferences
                    .setString("email", controller.email.text);
                myServices.sharedPreferences
                    .setString("address", controller.address.text); 
                
                Get.to(Identification());
              },
            )));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal Info'),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 35,
                stepSize: 10,
                selectedColor: Color.fromRGBO(33, 204, 135, 1),
                unselectedColor: Color.fromARGB(255, 225, 215, 215),
                padding: 0,
                width: 80,
                height: 80,
                selectedStepSize: 10,
                roundedCap: (_, __) => true,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  //! full name field
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GetBuilder<PersonalInfoControllerImp>(
                    init: PersonalInfoControllerImp(),
                    builder: (controller) => TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      controller: controller.firstName,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ('please Enter your FirstName');
                        }
                      },
                      onSaved: (value) {
                        controller.firstName.text = value!;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "FirstName",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  //! full name field
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GetBuilder<PersonalInfoControllerImp>(
                    builder: (controller) => TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      controller: controller.lastName,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ('please Enter your FirstName');
                        }
                      },
                      onSaved: (value) {
                        controller.lastName.text = value!;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "LasttName",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //! email field
                  child: GetBuilder<PersonalInfoControllerImp>(
                    builder: (controller) => TextFormField(
                      autofocus: false,
                      controller: controller.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Your Email");
                        }
                        //! reg expression for email validation
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //! email field
                  child: GetBuilder<PersonalInfoControllerImp>(
                    builder: (controller) => TextFormField(
                      autofocus: false,
                      controller: controller.phone_number,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Your Number");
                        }
                        //! reg expression for email validation
                        // if (!RegExp("^0[67][0-9]{8}]").hasMatch(value)) {
                        //   return ("Please Enter a valid Number");
                        // }
                        return null;
                      },
                      onSaved: (value) {
                        controller.phone_number.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //! adress form field

                  child: GetBuilder<PersonalInfoControllerImp>(
                    builder: (controller) => TextFormField(
                      autofocus: false,
                      controller: controller.address,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ('please Enter your Adress');
                        }
                      },
                      onSaved: (value) {
                        controller.address.text = value!;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on),
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        hintText: "Adress",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                nextButton,
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
