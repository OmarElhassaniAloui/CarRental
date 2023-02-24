import 'package:flutter/foundation.dart';

class CarItems {
  String? title;
  double? price;
  String? path;
  String? color;
  String? gearbox;
  String? fuel;
  String? brand;

  CarItems({
    @required this.brand,
    @required this.price,
    @required this.path,
    @required this.color,
    @required this.fuel,
    @required this.gearbox,
    @required this.title,
  });

  static CarsList allCars = new CarsList(cars: [
    CarItems(
      title: 'Honda Civic 2018',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car_images/car1.jpg',
    ),
    CarItems(
      title: 'Land Rover Evoque 2016',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car_images/car2.jpg',
    ),
    CarItems(
      title: 'Mercedes Benz SLS 2019',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car_images/car3.jpg',
    ),
    CarItems(
      title: 'Audi A6 2018',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car_images/car4.jpg',
    ),
    CarItems(
      title: 'Jaguar XF 2019',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car_images/car5.jpg',
    ),
    CarItems(
      title: 'BMW E-1 2018',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car_images/car6.jpg',
    ),
  ]);
}

class CarsList {
  List<CarItems>? cars;
  CarsList({this.cars});
}
