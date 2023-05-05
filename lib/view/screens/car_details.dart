// import 'package:car/screens/personal_info_pages/personal_info.dart';

import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../../widgets/cards/car_cards.dart';

import 'picktime.dart';

class CarDetails extends StatelessWidget {
  String? title;
  double? price;
  String? color;
  String? gearbox;
  String? fuel;
  String? brand;
  String? path;
  // pour la cart2  ;
  String? nbrOfSeats;
  String? typeVitess;

  CarDetails(
      {this.brand,
      this.color,
      this.fuel,
      this.gearbox,
      this.path,
      this.price,
      this.title,
      //pour cart 2
      this.nbrOfSeats,
      this.typeVitess,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              //todo :  favorite function
            },
            icon: Icon(
              Icons.favorite,
              size: 25,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          IconButton(
            onPressed: () {
              //todo :  share function
            },
            icon: Icon(Icons.share, size: 25),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(title!, style: MainHeading),
          Text(
            brand!,
            style: BasicHeading,
          ),
          Hero(tag: title!, child: Image.asset(path!)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarCards(
                name: '12 Month',
                price: price! * 12,
                name2: 'DH',
              ),
              CarCards(
                name: '6 Month',
                price: price! * 6,
                name2: 'DH',
              ),
              CarCards(
                name: '1 Month',
                price: price! * 1,
                name2: 'DH',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarCards(
                name: 'Color',
                name2: color,
              ),
              CarCards(
                name: 'Gearbox',
                name2: gearbox,
              ),
              CarCards(
                name: 'Fuel',
                name2: fuel,
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () async {
                // bool? onUserLogin;
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return dateAndTimePicker();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(double.infinity, 50),
                
              ),           
              child: Text(
                "Book Now ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
