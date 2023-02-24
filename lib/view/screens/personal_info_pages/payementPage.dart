import 'package:carrental/view/screens/onboardingScreen.dart';
import 'package:carrental/widgets/textFormFields.dart';
import 'package:flutter/material.dart';

import '../../langage.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  final _cardNumberController = TextEditingController();
  final _cardNameController = TextEditingController();
  final _cardExpiryDateController = TextEditingController();
  final _cardCodeController = TextEditingController();

  String? errorMsg;

  @override
  Widget build(BuildContext context) {
    // Forms
    final _cardNumberField = TextFormField(
      controller: _cardNumberController,
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter your card number";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final _cardNameForm = TextFormField(
      controller: _cardNameController,
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter your card Name ";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final _expiryDateForm = TextFormField(
      controller: _cardExpiryDateController,
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        }
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final _securityCodeForm = TextFormField(
      controller: _cardCodeController,
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        }
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select Payment Method "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 15, right: 10, bottom: 30),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 10),
                children: <Widget>[
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(0, 10),
                            color: Color.fromARGB(255, 25, 24, 24),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 216, 244, 54),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 244, 231),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 54, 197),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Card Detaills",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(15),
              child: Text(
                "Card Number",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: _cardNumberField,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(15),
              child: Text(
                "Name on Card",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: _cardNameForm,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Row(
                  children: [
                    Container(
                        child: Text(
                      "Expiry Date",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )),
                    SizedBox(
                      width: 75,
                    ),
                    Container(
                        child: Text(
                      "Securety Code",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  width: 160,
                  child: _expiryDateForm,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 160,
                  child: _expiryDateForm,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Langages();
                  }));
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
            ),
          ],
        ),
      ),
    ));
  }
}
