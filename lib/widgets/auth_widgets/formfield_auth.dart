// cin field
    // final cinField = TextFormField(
    //   autofocus: false,
    //   controller: cinControler,
    //   keyboardType: TextInputType.text,
    //   validator: (text) {
    //     if (text!.isEmpty) {
    //       return ('please Enter your Cin');
    //     }
    //     if (!RegExp("^()").hasMatch(text)) {
    //       return ('please Enter your real CIN ');
    //     }
    //     return null;
    //   },
    //   onSaved: (text) {
    //     cinControler.text = text!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.perm_identity),
    //     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //     hintText: "CIN",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //   ),
    // );

    // final chosingRole = Container(
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.grey, width: 1),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: DropDownMenu(),
    // );