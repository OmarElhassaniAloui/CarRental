class CarModel2 {
  int? carId;
  String? matricule;
  String? model;
  String? brand;
  int? year;
  int? seats;
  String? carburant;
  int? pricePerDay;
  String? description;
  int? disponibilit;
  String? photo1;
  String? photo2;
  String? photo3;
  String? photo4;
  String? auto;
  int? rate;


  CarModel2(
      {this.carId,
      this.matricule,
      this.model,
      this.brand,
      this.year,
      this.seats,
      this.carburant,
      this.pricePerDay,
      this.description,
      this.disponibilit,
      this.photo1,
      this.photo2,
      this.photo3,
      this.photo4, 
      this.auto,
      this.rate
      });

  CarModel2.fromJson(Map<String, dynamic> json) {
    carId = json['car_id'];
    matricule = json['matricule'];
    model = json['model'];
    brand = json['brand'];
    year = json['year'];
    seats = json['seats'];
    carburant = json['carburant'];
    pricePerDay = json['price_per_day'];
    description = json['description'];
    disponibilit = json['disponibilité'];
    photo1 = json['photo1'];
    photo2 = json['photo2'];
    photo3 = json['photo3'];
    photo4 = json['photo4'];
    auto = json['auto'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['car_id'] = this.carId;
    data['matricule'] = this.matricule;
    data['model'] = this.model;
    data['brand'] = this.brand;
    data['year'] = this.year;
    data['seats'] = this.seats;
    data['carburant'] = this.carburant;
    data['price_per_day'] = this.pricePerDay;
    data['description'] = this.description;
    data['disponibilité'] = this.disponibilit;
    data['photo1'] = this.photo1;
    data['photo2'] = this.photo2;
    data['photo3'] = this.photo3;
    data['photo4'] = this.photo4;
    data['auto'] = this.auto;
    data['rate'] = this.rate;
    return data;
  }
}