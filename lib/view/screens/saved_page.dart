import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved'),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.favorite_border,
                size: 50,
                color: Colors.grey,
              ),
            ),
            Container(
              child: Text("Your saved list is empty"),
            )
          ],
        ),
      )),
    );
  }
}
