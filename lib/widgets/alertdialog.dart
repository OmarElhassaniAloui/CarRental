import 'package:flutter/material.dart';

showLoading(context) {
  return showDialog(
      context: context,
      useSafeArea: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Login...'),
          content: Container(
            height: 80,
            width: 80,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      });
}
