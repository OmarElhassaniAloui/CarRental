class ClientModel {
  String? uid;
  String? email;
  String? fullName;
  String? phoneNumber;
  String? cin;
  String? passportId;
  String? imageCinPassFront;
  String? imageCinPassBack;
  String? imageLicenseFront;
  String? imageLicenseBack;
  String? localisation;
//! constructor 
  ClientModel({
    this.uid,
    this.email,
    this.fullName,
    this.phoneNumber,
    this.cin,
    this.imageCinPassBack,
    this.imageCinPassFront,
    this.imageLicenseFront,
    this.imageLicenseBack,
    this.localisation,
    this.passportId,
  });

  //! receiving data from server
  factory ClientModel.fromMap(map) {
    return ClientModel(
      uid: map['uid'],
      email: map['email'],
      fullName: map['fullName'],
      phoneNumber: map['phoneNumber'],
      cin: map['cin'],
      imageCinPassBack: map['imageCinPassBack'],
      imageCinPassFront: map['imageCinPassFront'],
      imageLicenseFront: map['imageLicenseFront'],
      imageLicenseBack: map['imageLicenseBack'],
      localisation: map['localisation'],
      passportId: map['passportId'],
    );
  }
  //! sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'cin': cin,
      'imageCinPassBack': imageCinPassBack,
      'imageCinPassFront': imageCinPassFront,
      'imageLicenseFront': imageLicenseFront,
      'imageLicenseBack': imageLicenseBack,
      'localisation': localisation,
      'passportId': passportId,
    };
  }
}
