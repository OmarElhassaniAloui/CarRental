import 'package:flutter/material.dart';

class CarModel {
  String? title;
  double? pricePerHour;
  double? pricePerDay;
  double? pricePerMonth;
  String? ImagePath;
  String? color;
  String? Seats;
  String? fuel;
  String? brand;
  int? rate;
  String? auto;
  // constructor
  CarModel({
    @required this.title,
    @required this.pricePerHour,
    @required this.pricePerDay,
    @required this.pricePerMonth,
    @required this.ImagePath,
    @required this.color,
    @required this.Seats,
    @required this.fuel,
    @required this.brand,
    @required this.rate,
    @required this.auto,
  });

  //todo add an async function that get a responce from data base

  static CarsList allCars = new CarsList(cars: [
    CarModel(
        ImagePath: "assets/car_images/car1.jpg",
        Seats: "5",
        brand: "sdfs",
        color: "",
        fuel: "Gas",
        pricePerDay: 23,
        pricePerHour: 55,
        pricePerMonth: 566,
        rate: 5,
        title: "Honda Civic 2018",
        auto: "auto"),
    CarModel(
        ImagePath: "assets/car_images/car2.jpg",
        Seats: "5",
        brand: "sdfs",
        color: "",
        fuel: "gas",
        pricePerDay: 23,
        pricePerHour: 55,
        pricePerMonth: 566,
        rate: 5,
        title: "",
        auto: "auto"),
    CarModel(
        ImagePath: "assets/car_images/car3.jpg",
        Seats: "5",
        brand: "sdfs",
        color: "",
        fuel: "",
        pricePerDay: 23,
        pricePerHour: 55,
        pricePerMonth: 566,
        rate: 6,
        title: "",
        auto: "auto"),
    CarModel(
        ImagePath: "assets/car_images/car4.jpg",
        Seats: "5",
        brand: "sdfs",
        color: "",
        fuel: "",
        pricePerDay: 23,
        pricePerHour: 55,
        pricePerMonth: 566,
        rate: 4,
        title: "",
        auto: "auto"),
    CarModel(
        ImagePath: "assets/car_images/car5.jpg",
        Seats: "5",
        brand: "sdfs",
        color: "",
        fuel: "",
        pricePerDay: 23,
        pricePerHour: 55,
        pricePerMonth: 566,
        rate: 3,
        title: "",
        auto: "auto"),
  ]);
}

class CarsList {
  List<CarModel>? cars;
  CarsList({this.cars});
}
