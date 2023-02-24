import 'package:flutter/material.dart';

class CostumButtonLang extends StatelessWidget {
  final String? txtButton;
  final void Function()? onPressed; 
  const CostumButtonLang({super.key, required this.txtButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton( 
        
        onPressed: onPressed,
        color: Colors.redAccent,
        textColor: Colors.white,
        child: Text(
          txtButton!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
