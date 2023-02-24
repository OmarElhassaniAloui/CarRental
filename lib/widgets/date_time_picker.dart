import 'package:flutter/material.dart';

class DateAndTimePicker extends StatefulWidget {
  DateAndTimePicker({Key? key}) : super(key: key);

  @override
  State<DateAndTimePicker> createState() => _DateAndTimePickerState();
}

class _DateAndTimePickerState extends State<DateAndTimePicker> {
  DateTime? _date = DateTime.now();
  final dateTime = TextEditingController();
  Future _selectData(BuildContext context) async {
    DateTime? _dataPicker = await showDatePicker(
        context: context,
        initialDate: _date!,
        firstDate: DateTime(1947),
        lastDate: DateTime(2030),
        // textDirection:TextDirection.rtl ,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              primaryColor: Colors.redAccent,
            ),
            child: child!,
          );
        });
    if (_dataPicker != null && _dataPicker != _date) {
      setState(() {
        _date = _dataPicker;
        print(_date.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        controller: dateTime,
        decoration: InputDecoration(
          hintText: (_date.toString()),
        ),
      ),
    );
  }
}
