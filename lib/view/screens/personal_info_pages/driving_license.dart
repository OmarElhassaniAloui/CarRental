import 'dart:io';
import 'dart:math';

import 'package:carrental/view/screens/picktime.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dotted_border/dotted_border.dart';
// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../confirmationpage.dart';
import 'package:intl/intl.dart';

class DrivingLicensecPage extends StatefulWidget {
  DrivingLicensecPage({Key? key}) : super(key: key);

  @override
  State<DrivingLicensecPage> createState() => _DrivingLicensecPageState();
}

class _DrivingLicensecPageState extends State<DrivingLicensecPage> {
  final _licenseIdController = TextEditingController();
  final _expiryDateController = TextEditingController();
  File? myFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Driving License'),
        backgroundColor: Colors.redAccent,
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
              Container(
                  // child: Lottie.network(
                  //   'https://assets4.lottiefiles.com/private_files/lf30_yo2zavgg.json',
                  //   height: 100,
                  //   width: 100,
                  // ),
                  ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                autofocus: false,
                textInputAction: TextInputAction.next,
                controller: _licenseIdController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('please Enter your license Id');
                  }
                },
                onSaved: (val) {
                  _licenseIdController.text = val!;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "License Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                autofocus: false,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.datetime,
                controller: _expiryDateController,
                onTap: () async {
                  DateTime? selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  if (selectedDate != null) {
                    setState(() {
                      _expiryDateController.text =
                          DateFormat('yyyy-MM-dd').format(selectedDate);
                    });
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('please Enter the expiry date');
                  }
                },
                onSaved: (val) {
                  _expiryDateController.text = val!;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.calendar_month,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "License Expiry Date",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Upload your Driving license',
                style: TextStyle(fontSize: 20),
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
                          // XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
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
                  Get.to(() => ConfiramtionPage());
                },
                child: Text(
                  'Continue',
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
