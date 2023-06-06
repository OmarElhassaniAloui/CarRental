import 'package:carrental/core/constants/constants.dart';
import 'package:carrental/view/screens/confirmationpage.dart';
import 'package:carrental/widgets/payment/card_alert_dialog.dart';
import 'package:carrental/widgets/payment/card_input_formatter.dart';
import 'package:carrental/widgets/payment/master_card.dart';
import 'package:carrental/widgets/payment/month_input.dart';
import 'package:carrental/widgets/payment/my_painter.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../widgets/costum_button.dart';
import '../success_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController cardExpiryDateController =
      TextEditingController();
  final TextEditingController cardCvvController = TextEditingController();

  final FlipCardController flipCardController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              FlipCard(
                  fill: Fill.fillFront,
                  direction: FlipDirection.HORIZONTAL,
                  controller: flipCardController,
                  onFlip: () {
                    print('Flip');
                  },
                  flipOnTouch: false,
                  onFlipDone: (isFront) {
                    print('isFront: $isFront');
                  },
                  front: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: buildCreditCard(
                      color: kDarkBlue,
                      cardExpiration: cardExpiryDateController.text.isEmpty
                          ? "08/2022"
                          : cardExpiryDateController.text,
                      cardHolder: cardHolderNameController.text.isEmpty
                          ? "Card Holder"
                          : cardHolderNameController.text.toUpperCase(),
                      cardNumber: cardNumberController.text.isEmpty
                          ? "XXXX XXXX XXXX XXXX"
                          : cardNumberController.text,
                    ),
                  ),
                  back: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 4.0,
                      color: kDarkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        height: 230,
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, bottom: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 0),
                            const Text(
                              'https://www.paypal.com',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            CustomPaint(
                              painter: MyPainter(),
                              child: SizedBox(
                                height: 35,
                                width: MediaQuery.of(context).size.width / 1.2,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      cardCvvController.text.isEmpty
                                          ? "322"
                                          : cardCvvController.text,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 11,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 40),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  controller: cardNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Card Number',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CardInputFormatter(),
                  ],
                  onChanged: (value) {
                    var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                    setState(() {
                      cardNumberController.value = cardNumberController.value
                          .copyWith(
                              text: text,
                              selection:
                                  TextSelection.collapsed(offset: text.length),
                              composing: TextRange.empty);
                    });
                  },
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  controller: cardHolderNameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      cardHolderNameController.value =
                          cardHolderNameController.value.copyWith(
                              text: value,
                              selection:
                                  TextSelection.collapsed(offset: value.length),
                              composing: TextRange.empty);
                    });
                  },
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: cardExpiryDateController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: 'MM/YY',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                        CardDateInputFormatter(),
                      ],
                      onChanged: (value) {
                        var text = value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                        setState(() {
                          cardExpiryDateController.value =
                              cardExpiryDateController.value.copyWith(
                                  text: text,
                                  selection: TextSelection.collapsed(
                                      offset: text.length),
                                  composing: TextRange.empty);
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: cardCvvController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: 'CVV',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                      onTap: () {
                        setState(() {
                          Future.delayed(const Duration(milliseconds: 300), () {
                            flipCardController.toggleCard();
                          });
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          int length = value.length;
                          if (length == 4 || length == 9 || length == 14) {
                            cardNumberController.text = '$value ';
                            cardNumberController.selection =
                                TextSelection.fromPosition(
                                    TextPosition(offset: value.length + 1));
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20 * 3),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: CustomElevatedButton(
                  text: 'Add Card',
                  onPressed: () {
                    Future.delayed(const Duration(milliseconds: 300), () {
                      // showDialog(
                      //   context: context,
                      //   builder: (context) => const CardAlertDialog(),
                      // );
                      Get.to(() => SuccessPage());
                      cardCvvController.clear();
                      cardExpiryDateController.clear();
                      cardHolderNameController.clear();
                      cardNumberController.clear();
                      flipCardController.toggleCard();
                    });
                  },
                ),
              ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.white,
              //     backgroundColor: Colors.deepPurpleAccent,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     minimumSize:
              //         Size(MediaQuery.of(context).size.width / 1.12, 55),
              //   ),
              //   onPressed: () {
              //     Future.delayed(const Duration(milliseconds: 300), () {
              //       // showDialog(
              //       //   context: context,
              //       //   builder: (context) => const CardAlertDialog(),
              //       // );
              //       Get.to(() => SuccessPage());
              //       cardCvvController.clear();
              //       cardExpiryDateController.clear();
              //       cardHolderNameController.clear();
              //       cardNumberController.clear();
              //       flipCardController.toggleCard();
              //     });
              //   },
              //   child: Text(
              //     'Add Card'.toUpperCase(),
              //     style: const TextStyle(
              //       fontSize: 15,
              //       fontWeight: FontWeight.w500,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:carrental/view/screens/onboardingScreen.dart';
// import 'package:carrental/widgets/textFormFields.dart';
// import 'package:flutter/material.dart';

// import '../confirmationpage.dart';
// import '../langage.dart';

// class PaymentPage extends StatefulWidget {
//   const PaymentPage({super.key});

//   @override
//   State<PaymentPage> createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _cardNumberController = TextEditingController();
//   final _cardNameController = TextEditingController();
//   final _cardExpiryDateController = TextEditingController();
//   final _cardCodeController = TextEditingController();

//   String? errorMsg;

//   @override
//   Widget build(BuildContext context) {
//     // Forms
//     final _cardNumberField = TextFormField(
//       controller: _cardNumberController,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "please enter your card number";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//     final _cardNameForm = TextFormField(
//       controller: _cardNameController,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "please enter your card Name ";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//     final _expiryDateForm = TextFormField(
//       controller: _cardExpiryDateController,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "";
//         }
//       },
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//     final _securityCodeForm = TextFormField(
//       controller: _cardCodeController,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "";
//         }
//       },
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );

//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Select Payment Method "),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.only(left: 15, top: 15, right: 10, bottom: 30),
//               height: 100,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 padding: EdgeInsets.only(right: 10),
//                 children: <Widget>[
//                   Container(
//                     width: 100,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 5.0,
//                             offset: Offset(0, 10),
//                             color: Color.fromARGB(255, 25, 24, 24),
//                           ),
//                         ]),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                     width: 100.0,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 216, 244, 54),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                     width: 100.0,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 54, 244, 231),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                     width: 100.0,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 244, 54, 197),
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: Container(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "Card Detaills",
//                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.topLeft,
//               margin: EdgeInsets.all(15),
//               child: Text(
//                 "Card Number",
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 15),
//               child: _cardNumberField,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     offset: Offset(2.0, 2.0),
//                     blurRadius: 4.0,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               alignment: Alignment.topLeft,
//               margin: EdgeInsets.all(15),
//               child: Text(
//                 "Name on Card",
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 15),
//               child: _cardNameForm,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     offset: Offset(2.0, 2.0),
//                     blurRadius: 4.0,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Container(
//                 child: Row(
//                   children: [
//                     Container(
//                         child: Text(
//                       "Expiry Date",
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.grey),
//                     )),
//                     SizedBox(
//                       width: 75,
//                     ),
//                     Container(
//                         child: Text(
//                       "Securety Code",
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.grey),
//                     )),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 15),
//                   alignment: Alignment.topLeft,
//                   width: 160,
//                   child: _expiryDateForm,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey,
//                         offset: Offset(2.0, 2.0),
//                         blurRadius: 4.0,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Container(
//                   alignment: Alignment.topLeft,
//                   width: 160,
//                   child: _expiryDateForm,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey,
//                         offset: Offset(2.0, 2.0),
//                         blurRadius: 4.0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: OutlinedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
//                     return ConfiramtionPage();
//                   }));
//                 },
//                 child: Text(
//                   'Continue',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//                 style: OutlinedButton.styleFrom(
//                   fixedSize: Size(370, 48),
//                   backgroundColor: Colors.redAccent,
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 20,
//                   ),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
