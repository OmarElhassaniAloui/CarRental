import 'package:flutter/material.dart';

class PayementForms extends StatefulWidget {
  const PayementForms({super.key});

  @override
  State<PayementForms> createState() => _PayementFormsState();
}

class _PayementFormsState extends State<PayementForms> {

  final _formKey = GlobalKey<FormState>();
  final _cardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: TextFormField(
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
        ) 
      );
  }
}

// class TextFormFieldsWidget extends StatelessWidget {

//    TextFormFieldsWidget({Key? key}) : super(key: key);
//    final _formKey = GlobalKey<FormState>();
//    final emailEditingController = TextEditingController();
//    final firstNameEditingController = TextEditingController();

//   final emailField = TextFormField(
//         autofocus: false,
//         controller: emailEditingController,
//         keyboardType: TextInputType.emailAddress,
//         validator: (value) {
//           if (value!.isEmpty) {
//             return ("Please Enter Your Email");
//           }
//           // reg expression for email validation
//           if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
//               .hasMatch(value)) {
//             return ("Please Enter a valid email");
//           }
//           return null;
//         },
//         onSaved: (value) {
//           firstNameEditingController.text = value!;
//         },
//         textInputAction: TextInputAction.next,
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.mail),
//           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//           hintText: "Email",
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ));

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
