import 'package:carrental/widgets/profile_widgets/profile_forme_fields.dart';
import 'package:carrental/widgets/profile_widgets/profile_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/costum_button.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(15),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              // imagePath: null,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            ProfileTextFieldWidget(
              label: 'Full Name',
              text: "user.name",
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            ProfileTextFieldWidget(
              label: 'Email',
              text: "user.email",
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            ProfileTextFieldWidget(
              label: 'About',
              text: "user.about",
              maxLines: 5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 10),
            CustomElevatedButton(
              text: 'Save',
              onPressed: () {},
            )

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     onPrimary: Colors.white,
            //     padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            //   ),
            //   child: Text("text"),
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
  }
}
