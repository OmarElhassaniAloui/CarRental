import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../../data/model/carsModel.dart';
import '../../view/screens/car_details.dart';

class CarsGridView extends StatelessWidget {
  CarsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: CarItems.allCars.cars!.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (contex) {
                return CarDetails(
                  title: CarItems.allCars.cars![i].title,
                  brand: CarItems.allCars.cars![i].brand,
                  fuel: CarItems.allCars.cars![i].fuel,
                  price: CarItems.allCars.cars![i].price,
                  path: CarItems.allCars.cars![i].path,
                  gearbox: CarItems.allCars.cars![i].gearbox,
                  color: CarItems.allCars.cars![i].color,
                );
              }));
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 20, bottom: i.isEven ? 20 : 0),
              decoration: BoxDecoration(
                // color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 5, spreadRadius: 1),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Hero(
                    tag: "${CarItems.allCars.cars![i].title}",
                    child: Image.asset("${CarItems.allCars.cars![i].path}"),
                  ),
                  Text(
                    "${CarItems.allCars.cars![i].title}",
                    style: BasicHeading,
                  ),
                  Text((CarItems.allCars.cars![i].price).toString(),
                      style: SubHeading),
                  Text('per month')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
