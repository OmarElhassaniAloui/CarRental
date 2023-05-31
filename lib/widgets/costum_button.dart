import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              TextStyle(color: Color.fromARGB(255, 243, 109, 0), fontSize: 20),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              TextStyle(color: Color.fromARGB(255, 243, 109, 0), fontSize: 20),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        ),
      ),
    );
  }
}
