import 'package:flutter/material.dart';
import 'package:login_register_auth/components/drug_category_item.dart';
import 'package:login_register_auth/models/drug_category_model.dart';
import 'package:login_register_auth/pages/ear_nose_preparations_page.dart';

class DrugCategories extends StatefulWidget {
  const DrugCategories({super.key});

  @override
  State<DrugCategories> createState() => _DrugCategoriesState();
}

class _DrugCategoriesState extends State<DrugCategories> {
  final List<CategoryComp> category = const [
    CategoryComp(
      image: "assets/images/categories_images/earNoseEye.png",
      name: "EAR & NOSE PREPARATIONS",
    ),
    CategoryComp(
      image: "assets/images/categories_images/cardiology.png",
      name: "CARDIOVASCULAR SYSTEM",
    ),
    CategoryComp(
      image: "assets/images/categories_images/muscle.png",
      name: "MUSCULOSKELETAL SYSTEM",
    ),
    CategoryComp(
      image: "assets/images/categories_images/neuron.png",
      name: "DRUGS AFFECTING (CNS)",
    ),
    CategoryComp(
      image: "assets/images/categories_images/respiratory-system.png",
      name: "RESPIRATORY SYSTEM",
    ),
    CategoryComp(
      image: "assets/images/categories_images/topical.png",
      name: "TOPICAL PREPARATIONS",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff016CA5),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            DrugCategory(
              categorydrug: category[0],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return earAndNose();
                    },
                  ),
                );
              },
            ),
            DrugCategory(
              categorydrug: category[1],
              onTap: () {},
            ),
            DrugCategory(
              categorydrug: category[2],
              onTap: () {},
            ),
            DrugCategory(
              categorydrug: category[3],
              onTap: () {},
            ),
            DrugCategory(
              categorydrug: category[4],
              onTap: () {},
            ),
            DrugCategory(
              categorydrug: category[5],
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
