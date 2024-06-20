import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  double? paddingH;
  double? paddingV;
  final void Function()? onPressed;

  CustomTextButton({
    Key? key,
    required this.text,
    required this.paddingH,
    required this.paddingV,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              TextStyle(color: Color.fromARGB(255, 243, 109, 0), fontSize: 20),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF001253) ,
          padding:
              EdgeInsets.symmetric(horizontal: paddingH!, vertical: paddingV!),
        ),
      ),
    );
  }
}

// costum elevated button ..
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomElevatedButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              TextStyle(color: Color.fromARGB(255, 243, 109, 0), fontSize: 20),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF001253),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          // disabledBackgroundColor: Color();
        ),
      ),
    );
  }
}
