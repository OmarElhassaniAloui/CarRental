class Data {
  int? idClient;
  String? fullname;
  String? email;
  String? phoneNumber;
  String? address;
  String? cin;
  String? cinPhotoFront;
  String? cinPhotoBack;
  String? passport;
  String? passportPhotoFront;
  String? passportPhotoBack;
  String? licenceNumber;
  String? licenceExpiryDate;
  String? drivingLicensePhotoFront;
  String? drivingLicensePhotoBack;
  String? clientPhoto;
  String? paymentMethod;

  Data(
      {this.idClient,
      this.fullname,
      this.email,
      this.phoneNumber,
      this.address,
      this.cin,
      this.cinPhotoFront,
      this.cinPhotoBack,
      this.passport,
      this.passportPhotoFront,
      this.passportPhotoBack,
      this.licenceNumber,
      this.licenceExpiryDate,
      this.drivingLicensePhotoFront,
      this.drivingLicensePhotoBack,
      this.clientPhoto,
      this.paymentMethod});

  Data.fromJson(Map<String, dynamic> json) {
    idClient = json['id_client'];
    fullname = json['fullname'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    address = json['address'];
    cin = json['cin'];
    cinPhotoFront = json['cin_photo_front'];
    cinPhotoBack = json['cin_photo_back'];
    passport = json['passport'];
    passportPhotoFront = json['passport_photo_front'];
    passportPhotoBack = json['passport_photo_back'];
    licenceNumber = json['licence_number'];
    licenceExpiryDate = json['licence_expiry_date'];
    drivingLicensePhotoFront = json['driving_license_photo_front'];
    drivingLicensePhotoBack = json['driving_license_photo_back'];
    clientPhoto = json['client_photo'];
    paymentMethod = json['payment_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_client'] = this.idClient;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['address'] = this.address;
    data['cin'] = this.cin;
    data['cin_photo_front'] = this.cinPhotoFront;
    data['cin_photo_back'] = this.cinPhotoBack;
    data['passport'] = this.passport;
    data['passport_photo_front'] = this.passportPhotoFront;
    data['passport_photo_back'] = this.passportPhotoBack;
    data['licence_number'] = this.licenceNumber;
    data['licence_expiry_date'] = this.licenceExpiryDate;
    data['driving_license_photo_front'] = this.drivingLicensePhotoFront;
    data['driving_license_photo_back'] = this.drivingLicensePhotoBack;
    data['client_photo'] = this.clientPhoto;
    data['payment_method'] = this.paymentMethod;
    return data;
  }
}