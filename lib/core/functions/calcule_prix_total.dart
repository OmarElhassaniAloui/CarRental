class CalculePrixTotal {
  
  static double calculePrixTotal(double prixParJour, int nomberDesJours) { 
    double prixTotal = 0.0;
    if (nomberDesJours > 0) {
      prixTotal = nomberDesJours * prixParJour; 
    }
    return prixTotal;
  }
}

