import 'package:carrental/view/screens/personal_info_pages/identification.dart';
import 'package:carrental/view/screens/personal_info_pages/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class dateAndTimePicker extends StatefulWidget {
  dateAndTimePicker({Key? key}) : super(key: key);

  @override
  State<dateAndTimePicker> createState() => _dateAndTimePickerState();
}

class _dateAndTimePickerState extends State<dateAndTimePicker> {
  GlobalKey _formkey = GlobalKey<FormState>();

  final departTripTime = TextEditingController();
  final ReturnDateAndTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Date and Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Departure Date and Time',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
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
                  onSaved: (val) {
                    departTripTime.text = val.toString();
                    print(val);
                  }),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Return Date and Time',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
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
            //sizebox
            SizedBox(height: 50),
            //save button
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            // button next
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PersonalInfo(),
                ));
              },
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
