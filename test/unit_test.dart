import 'package:flutter_test/flutter_test.dart'; 
import'package:carrental/core/functions/calcule_prix_total.dart' ;    
void main() {
  group("prixTotal", () {
    test('should calculate the total price correctly', () { 
      CalculePrixTotal calculePrixTotal = CalculePrixTotal();  
      // les donnees d'entree
      final prixParJour = 400.00;
      var numberOfDays = 2;
      final expectedPrixTotal = 800.0;
      // quand on appelle la fonction
      var prixTotal = CalculePrixTotal.calculePrixTotal(prixParJour, numberOfDays);
      // puis on verifie le resultat
      expect(prixTotal, expectedPrixTotal);
    });

    test('should return 0.0 when numberOfDays is 0 ', () {
      CalculePrixTotal calculePrixTotal = CalculePrixTotal(); 
      // les donnees d'entree
      final prixParJour = 400.00;
      var numberOfDays = 0;
      final expectedPrixTotal = 0.0;
      // quand on appelle la fonction
      var prixTotal = CalculePrixTotal.calculePrixTotal(prixParJour, numberOfDays);
      // puis on verifie le resultat
      expect(prixTotal, expectedPrixTotal);
    });

  });
}
