class Category {
  String icon;
  String name;

  Category({
    required this.name,
    required this.icon,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Drugs',
    icon: 'assets/images/drug2.png',
  ),
  Category(
    name: 'Favorites ',
    icon: 'assets/images/prescription.png',
  ),
  Category(
    name: 'Interactions',
    icon: 'assets/images/interaction.png',
  ),
  Category(
    name: 'Reference',
    icon: 'assets/images/reference.png',
  ),
  Category(
    name: 'Scan drug',
    icon: 'assets/images/scan.png',
  ),
  Category(
    name: 'Patients',
    icon: 'assets/images/patient.png',
  ),
];
