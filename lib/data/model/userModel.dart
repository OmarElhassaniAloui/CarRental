// import 'package:firebase_core/firebase_core.dart';

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? urole;
  String? idfavoritCar;

  UserModel(
      {this.uid, this.email, this.firstName, this.secondName, this.urole});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      urole: map['urole'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'urole': urole,
    };
  }
}
