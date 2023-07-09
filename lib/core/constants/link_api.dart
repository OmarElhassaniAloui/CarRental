class AppLink {
  // base url
  static const String serverLink = "http://10.0.2.2/projects/gestion_location_Api";
  // static const String serverLink = "http://10.0.2.2/projects/carentalApiPhp";
  // auth urls
  static const String signUpLink = "$serverLink/auth/signup.php";
  static const String loginLink = "$serverLink/auth/login.php";
  // image url
  static const String imageLink = "$serverLink/uploads/";
  // static const String test = "$serverLink/test.php";
  static const String favoritlink = "$serverLink/favorit.php";

  // home urls
  static const String carsLink = "$serverLink/carCart/car_cart.php";
  // personal info urls 
  static const String personalInfoLink = "$serverLink/clients/personal_info_data/insert_personal_info.php"; 
  static const String updatePersonalInfoLink = "$serverLink/clients/personal_info_data/update_personal_info.php";
  static const String getpersonalInfolink = "$serverLink/clients/personal_info_data/get_personal_info.php"; 
  static const String getClientId = "$serverLink/clients/get_client.php";
  // driving license urls
  static const String drivingLicenseLink = "$serverLink/drivingLicense/driving_license.php";
  // test data 
  static const String test = "$serverLink/testdata/test_data.php"; 
  // identification urls
  static const String identificationLink = "$serverLink/identification/identification.php"; 
  // reservation urls
  static const String reservationLink = "$serverLink/reservation/create_reservation.php";  
  
  
}
