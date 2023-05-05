import 'package:carrental/widgets/card2/cardCarWdg.dart';
import 'package:flutter/material.dart';
import 'package:carrental/data/model/carModel/car_model.dart'; 


class CarsListView extends StatelessWidget {
   CarsListView({super.key});
  
  int? index; 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      itemCount: CarModel.allCars.cars!.length,
      itemBuilder: (Context, i) {
        return CarCard(
          index: i,
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
    );
  }
}