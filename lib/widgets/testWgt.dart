import 'package:carrental/data/model/test_Model.dart';
import 'package:flutter/material.dart';

class testwdgt extends StatelessWidget {

  int index;  
  final Data data;
  
  testwdgt({super.key , required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(data.fullname!),
        subtitle: Text(data.email!),
      ),
    );
  }
}

