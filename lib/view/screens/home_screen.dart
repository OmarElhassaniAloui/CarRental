import 'package:carrental/data/model/carModel/car_model.dart';
import 'package:carrental/widgets/card2/cardCarWdg.dart';
import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../../widgets/cards/cars_grid.dart';
import '../../widgets/darwer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        // backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: Text(
            "Car Rental ",
            style: SubHeading,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              scaffoldkey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
        drawer: MyDrawer(),
        body:Container(
        child:ListView.builder( 
          physics: ScrollPhysics(),
          itemCount: CarModel.allCars.cars!.length,
          itemBuilder: (Context, i) {
            return CarCard(
              title: CarModel.allCars.cars![i].title,
              Seats: CarModel.allCars.cars![i].Seats,
              ImagePath: CarModel.allCars.cars![i].ImagePath,
              fuel: CarModel.allCars.cars![i].fuel,
              pricePerDay: CarModel.allCars.cars![i].pricePerDay,
              pricePerHour: CarModel.allCars.cars![i].pricePerHour,
              pricePerMonth: CarModel.allCars.cars![i].pricePerMonth,
              rate: CarModel.allCars.cars![i].rate,
              brand: CarModel.allCars.cars![i].brand,
              color: CarModel.allCars.cars![i].color,
              auto: CarModel.allCars.cars![i].auto,
            );
          },

        ),  
      ),





            // ListView(
            //   children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     'Available Cars',
            //     style: MainHeading,
            //   ),
            // ),
            // Padding(
            //    padding: const EdgeInsets.all(2),
            //   child: CarsGridView(),
            //  )
        //   ],
        // ),
        );
  }
}
