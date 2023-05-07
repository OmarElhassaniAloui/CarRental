class CalculePrixTotal {
  int? numberOfDays;  
  double? pricePerDay;
  static double calculePrixTotal(double pricePerDay,int numberOfDays ) {
    return pricePerDay * numberOfDays;
  }
}
