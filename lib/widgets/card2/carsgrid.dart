import 'package:flutter/material.dart';

import '../../data/model/carsModel.dart';

import '../../view/screens/car_details.dart';

class CarsGrid2 extends StatelessWidget {
  const CarsGrid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder( 
      physics: ScrollPhysics(), 
      itemCount: CarItems.allCars.cars!.length, 
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
                return CarDetails(
                  title: CarItems.allCars.cars![i].title,
                  brand: CarItems.allCars.cars![i].brand,
                  fuel: CarItems.allCars.cars![i].fuel,
                  price: CarItems.allCars.cars![i].price,
                  path: CarItems.allCars.cars![i].path,
                  gearbox: CarItems.allCars.cars![i].gearbox,
                  color: CarItems.allCars.cars![i].color, 
                  // nbrOfSeats:CarItems.allCars.cars![i].nbrOfSeats,
                  // typeVitess: CarItems.allCars.cars![i].typeVitess, 

                );
              }));
          },
        );
      },
    );
  }
}
