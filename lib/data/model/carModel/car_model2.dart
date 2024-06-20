class CarModel {
  int? idVoiture;
  String? immatriculation;
  String? marque;
  String? model;
  int? nombreplace;
  int? puissanceFiscal;
  int? kilometrage;
  String? prixlocation;
  String? carburant;
  String? etat;
  String? descriptiom;
  int? deletevoiture;
  int? rate;
  String? transmission;
  int? idPhotovoiture;
  String? photo1;
  String? photo2;
  String? photo3;
  String? photo4;

  CarModel(
      {this.idVoiture,
      this.immatriculation,
      this.marque,
      this.model,
      this.nombreplace,
      this.puissanceFiscal,
      this.kilometrage,
      this.prixlocation,
      this.carburant,
      this.etat,
      this.descriptiom,
      this.deletevoiture,
      this.rate,
      this.transmission,
      this.idPhotovoiture,
      this.photo1,
      this.photo2,
      this.photo3,
      this.photo4});

  CarModel.fromJson(Map<String, dynamic> json) {
    idVoiture = json['idVoiture'];
    immatriculation = json['immatriculation'];
    marque = json['marque'];
    model = json['model'];
    nombreplace = json['Nombreplace'];
    puissanceFiscal = json['PuissanceFiscal'];
    kilometrage = json['kilometrage'];
    prixlocation = json['prixlocation'];
    carburant = json['carburant'];
    etat = json['etat'];
    descriptiom = json['descriptiom'];
    deletevoiture = json['deletevoiture'];
    rate = json['rate'];
    transmission = json['transmission'];
    idPhotovoiture = json['idPhotovoiture'];
    photo1 = json['Photo1'];
    photo2 = json['Photo2'];
    photo3 = json['Photo3'];
    photo4 = json['Photo4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idVoiture'] = this.idVoiture;
    data['immatriculation'] = this.immatriculation;
    data['marque'] = this.marque;
    data['model'] = this.model;
    data['Nombreplace'] = this.nombreplace;
    data['PuissanceFiscal'] = this.puissanceFiscal;
    data['kilometrage'] = this.kilometrage;
    data['prixlocation'] = this.prixlocation;
    data['carburant'] = this.carburant;
    data['etat'] = this.etat;
    data['descriptiom'] = this.descriptiom;
    data['deletevoiture'] = this.deletevoiture;
    data['rate'] = this.rate;
    data['transmission'] = this.transmission;
    data['idPhotovoiture'] = this.idPhotovoiture;
    data['Photo1'] = this.photo1;
    data['Photo2'] = this.photo2;
    data['Photo3'] = this.photo3;
    data['Photo4'] = this.photo4;
    return data;
  }
}




