import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import './driving_license.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
// import 'package:car/widgets/cercular_indercator.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:io';
import 'package:path/path.dart';
// import 'package:firebase_storage/firebase_storage.dart';

class Identification extends StatefulWidget {
  Identification({Key? key}) : super(key: key);

  @override
  State<Identification> createState() => _IdentificationState();
}

class _IdentificationState extends State<Identification> {
  String? radioGroubItems;

  File? myFile;
  var _imageCinPassFront;
  var _imageCinPassUrl;
  //! hint value
  String? hintvalu;
  //! cin passport controler
  final _cinPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? changeText() {
      if (hintvalu == 'National ID' || hintvalu == null) {
        return 'National ID';
      } else if (hintvalu == 'Passport') {
        return 'Passport';
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Identification'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              //! cirvualar progress indicator
              Container(
                child: CircularStepProgressIndicator(
                  totalSteps: 100,
                  currentStep: 70,
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

              Container(
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'National ID',
                      groupValue: radioGroubItems,
                      onChanged: (val) {
                        setState(() {
                          hintvalu = val;
                          radioGroubItems = val;
                        });
                      },
                    ),
                    Text('National ID'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Radio(
                      value: 'Passport',
                      groupValue: radioGroubItems,
                      onChanged: (val) {
                        setState(() {
                          hintvalu = val as String;
                          radioGroubItems = val;
                        });
                      },
                    ),
                    Text('Passport'),
                  ],
                ),
              ),
              TextFormField(
                autofocus: false,
                textInputAction: TextInputAction.next,
                controller: _cinPassController,
                validator: (value) {
                  if (value!.isEmpty && hintvalu == 'National ID') {
                    return ('please Enter Your National ID');
                  } else if (value.isEmpty && hintvalu == 'Passport') {
                    return ('please Enter Your passport ID');
                  }
                },
                onSaved: (val) {
                  _cinPassController.text = val!;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: hintvalu,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "${changeText()}",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Select Image'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    title: Text('Camera'),
                                    onTap: () async {
                                      XFile? pickedFile = await ImagePicker()
                                          .pickImage(
                                              source: ImageSource.camera);
                                      myFile = File(pickedFile!.path);
                                      Navigator.pop(context);
                                    },
                                  ),
                                  ListTile(
                                    title: Text('Gallery'),
                                    onTap: () async {
                                      XFile? pickedFile = await ImagePicker()
                                          .pickImage(
                                              source: ImageSource.gallery);
                                      myFile = File(pickedFile!.path);
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: DottedBorder(
                          child: Container(
                            height: 80,
                            width: 150,
                            child: Center(
                                child: Text(
                              '+',
                              style: TextStyle(fontSize: 30),
                            )),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(136, 235, 235, 235),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Front',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Select Image'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    title: Text('Camera'),
                                    onTap: () async {
                                      XFile? pickedFile = await ImagePicker()
                                          .pickImage(
                                              source: ImageSource.camera);
                                      myFile = File(pickedFile!.path);
                                      Navigator.pop(context);
                                    },
                                  ),
                                  ListTile(
                                    title: Text('Gallery'),
                                    onTap: () async {
                                      XFile? pickedFile = await ImagePicker()
                                          .pickImage(
                                              source: ImageSource.gallery);
                                      myFile = File(pickedFile!.path);
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: DottedBorder(
                          child: Container(
                            height: 80,
                            width: 150,
                            child: Center(
                                child: Text(
                              '+',
                              style: TextStyle(fontSize: 30),
                            )),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(136, 235, 235, 235),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  //todo : ila makant htta image dakhla -> msage error
                  // if(){

                  // }

                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return DrivingLicensecPage();
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
