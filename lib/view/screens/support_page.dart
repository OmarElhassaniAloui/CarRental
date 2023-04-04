import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  SupportPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailEditingController = TextEditingController();
  final FullNameEditingController = TextEditingController();
  final MessageditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We'ra Happy to hear from you !",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Let us know your queries and feedbacks",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.call),
                            label: Text("Call us"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              fixedSize: Size(150, 40),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.mail_outline, color: Colors.red),
                            label: Text(
                              "Mail us",
                              style: TextStyle(color: Colors.red),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.red,
                              ),
                              fixedSize: Size(150, 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Divider(thickness: 2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "Or Send your Message",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          TextFormField(
                              autofocus: false,
                              controller: emailEditingController,
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Please Enter Your Name");
                                }
                              },
                              onSaved: (value) {
                                FullNameEditingController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.mail),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                hintText: "Full Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              autofocus: false,
                              controller: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Please Enter Your Email");
                                }
                                // reg expression for email validation
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please Enter a valid email");
                                }
                                return null;
                              },
                              onSaved: (value) {
                                emailEditingController.text = value!;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.mail),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            maxLines: 4,
                            keyboardType: TextInputType.multiline,
                            controller: MessageditingController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("Please Enter Your Name");
                              }
                            },
                            onSaved: (value) {
                              emailEditingController.text = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            // padding:  EdgeInsets.symmetric(horizontal: 15),
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                // Navigator.of(context)
                                //     .push(MaterialPageRoute(builder: (_) {
                                //   return Home();
                                // }));
                              },
                              child: Text(
                                'Send',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                fixedSize: Size(370, 48),
                                backgroundColor: Colors.redAccent,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
