import 'package:flutter/material.dart';

class ShowDialogs extends StatelessWidget {
  String? title;
  List<Widget>? actions;
  double? hight;
  double? width;
  Widget? child;
  ShowDialogs({
    super.key,
    this.title,
    this.actions,
    this.hight,
    this.width,
    this.child,
  }); 
  

  @override
  Widget build(BuildContext context) {
    return Container( 
      child: AlertDialog(
        title: Text(title!),
        content: Container(
          height: hight,
          width: width,
          child: child,
        ),
        actions: actions,
      )
    ); 
  }
}

// showLoading(context, Widget title, Widget content, List<Widget> actions) {
//   return showDialog(
//       context: context,
//       useSafeArea: true,
//       builder: (context) {
//         return AlertDialog(
//           title: title,
//           content: content,
//           actions: actions,
//       );
//   });
// }
