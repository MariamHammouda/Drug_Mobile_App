import 'package:flutter/material.dart';
import 'package:login_register_auth/pages/add_drug_page.dart';
import 'package:login_register_auth/pages/drug_categories_page.dart';
import 'package:login_register_auth/pages/prescription_page.dart';
import 'package:login_register_auth/pages/reference_page.dart';

class Category {
  String icon;
  String name;
  Widget targetPage;

  Category({
    required this.name,
    required this.icon,
    required this.targetPage,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Drugs',
    icon: 'assets/images/drug2.png',
    targetPage: const DrugCategories(),
  ),
  Category(
    name: 'prescription',
    icon: 'assets/images/prescription.png',
    targetPage: PrescriptionPage(),
  ),
  Category(
    name: 'Reference',
    icon: 'assets/images/reference.png',
    targetPage: ReferencePage(),
  ),
  Category(
    name: 'Add Drug',
    icon: 'assets/images/adddrug.png',
    targetPage: AddDrugPage(),
  ),
];
