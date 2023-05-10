// import 'package:car/screens/personal_info_pages/identification.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../data/model/client/clientModel/clientModel.dart';
// import '../../client/clientModel/clientModel.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'identification.dart';

class PersonalInfo extends StatefulWidget {
  PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  // final _auth = FirebaseAuth.instance;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobilePhonController = TextEditingController();
  final _adressController = TextEditingController();

  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    final nextButton = OutlinedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return Identification();
        }));
      },
      child: Text(
        'Next',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(370, 48),
        backgroundColor: Colors.redAccent,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  //! full name field
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    controller: _fullNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('please Enter your Full Name');
                      }
                      // if(){

                      // }
                    },
                    onSaved: (value) {
                      _fullNameController.text = value!;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
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
                  child: TextFormField(
                    autofocus: false,
                    controller: _emailController,
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
                      _emailController.text = value!;
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //! email field
                  child: TextFormField(
                    autofocus: false,
                    controller: _mobilePhonController,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Please Enter Your Number");
                      }
                      //! reg expression for email validation
                      if (!RegExp("^0[67][0-9]{8}]").hasMatch(value)) {
                        return ("Please Enter a valid Number");
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _mobilePhonController.text = value!;
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
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   //! phone number field
                //   child: InternationalPhoneNumberInput(
                //     onInputChanged: (PhoneNumber number) {
                //       print(number.phoneNumber);
                //     },
                //     onInputValidated: (bool value) {
                //       print(value);
                //     },
                //     selectorConfig: SelectorConfig(
                //       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                //     ),
                //     ignoreBlank: false,
                //     autoValidateMode: AutovalidateMode.disabled,
                //     selectorTextStyle: TextStyle(color: Colors.black),
                //     initialValue: number,
                //     textFieldController: _mobilePhonController,
                //     formatInput: false,
                //     validator: (val) {
                //       if (val!.isEmpty) {
                //         return ('please enter youre phone Number');
                //       }
                //     },
                //     keyboardType: TextInputType.numberWithOptions(
                //         signed: true, decimal: true),
                //     inputBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     onSaved: (PhoneNumber number) {
                //       _mobilePhonController.text = number as String;
                //       print('On Saved: $number');
                //     },
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //! adress form field

                  child: TextFormField(
                    autofocus: false,
                    controller: _adressController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('please Enter your Adress');
                      }
                    },
                    onSaved: (value) {
                      _adressController.text = value!;
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

  validatPersonalInfo() async {
    return;
  }

  
}
