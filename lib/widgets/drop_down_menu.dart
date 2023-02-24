import 'package:flutter/material.dart';
// import 'package:car/screens/registration.dart';

class DropDownMenu extends StatefulWidget {
  DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  var selectedValue;
  List<String> roleItems = ['Client ', 'Admin'];
  var role = 'client';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        hint: Text('select role '),
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        value: selectedValue,
        underline: SizedBox(),
        onChanged: (newValue) {
          selectedValue = newValue as String;
          role = newValue;
        },
        items: roleItems.map((valueItem) {
          return DropdownMenuItem(value: valueItem, child: Text(valueItem));
        }).toList(),
      ),
    );
  }
}
