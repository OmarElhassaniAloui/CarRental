import 'package:carrental/view/screens/success_page.dart';
import 'package:flutter/material.dart';
import '../../widgets/confirmationWidget/confirmationCard1.dart';
import '../../widgets/confirmationWidget/confirmationCardFour.dart';
import '../../widgets/confirmationWidget/confirmationCardtree.dart';
import '../../widgets/confirmationWidget/confirmwdgtOne.dart';

class ConfiramtionPage extends StatelessWidget {
  const ConfiramtionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text('Confiramtion'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  "Please Review your Requist and confirme",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.red),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ConfirmationCard1(),
              ConfirmationCardOne(),
              ConfirmationCardTree(),
              ConfirmationCardFour(),
              
              Container(
                // padding:  EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return SuccessPage();
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
