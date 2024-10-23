import 'package:flutter/material.dart';
import 'package:login_register_auth/components/custom_drug_item.dart';

//import 'lib\pagesdrug_info_class.dart';

class DrugProvider with ChangeNotifier {
  List<Drug> _drugs = [];

  List<Drug> get drugs => _drugs;

  void addDrug(Drug drug) {
    _drugs.add(drug);
    notifyListeners();
  }

  void searchDrugs(String query) {
    _drugs = _drugs.where((drug) {
      return drug.name.toLowerCase().contains(query.toLowerCase()) || drug.activeIngredient.toLowerCase().contains(query.toLowerCase());
    }).toList();
    notifyListeners();
  }
}

class Drug {
  String name;
  String activeIngredient;
  String category;
  String form;
  String dose;

  Drug({
    required this.name,
    required this.activeIngredient,
    required this.category,
    required this.form,
    required this.dose,
  });
}
