import 'package:carrental/view/screens/personal_info_pages/identification.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class dateAndTimePicker extends StatefulWidget {
  dateAndTimePicker({Key? key}) : super(key: key);

  @override
  State<dateAndTimePicker> createState() => _dateAndTimePickerState();
}

class _dateAndTimePickerState extends State<dateAndTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pick date and time '),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              dateMask: 'd MMM, yyyy',
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              icon: Icon(Icons.event),
              dateLabelText: 'Date',
              timeLabelText: "Hour",
              selectableDayPredicate: (date) {
                // Disable weekend days to select from the calendar
                if (date.weekday == 6 || date.weekday == 7) {
                  return false;
                }
                return true;
              },
              onChanged: (val) => print(val),
              validator: (val) {
                print(val);
                return null;
              },
              onSaved: (val) => print(val),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Identification(),
                  )),
              child: Text('Next') ,  
              style: ButtonStyle(
                // fixedSize: Size.fromWidth(100) , 
              ),
              
              
              
              
            ),
        ],
      ),
    );
  }
}
