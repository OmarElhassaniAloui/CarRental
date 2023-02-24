import 'package:flutter/material.dart';

class BookingNowPage extends StatefulWidget {
  BookingNowPage({Key? key}) : super(key: key);

  @override
  State<BookingNowPage> createState() => _BookingNowPageState();
}

class _BookingNowPageState extends State<BookingNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Booking Now'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        
        children: [
          Container(
            child: Text('Vehicul Booking'),
          ),
        ],
      ),
    );
  }
}
