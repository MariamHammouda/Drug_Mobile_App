import "package:flutter/material.dart";

import "package:login_register_auth/models/drug_category_model.dart";

// DrugCategory as basic widget
class DrugCategory extends StatelessWidget {
  const DrugCategory({super.key, required this.categorydrug, required this.onTap});
  final CategoryComp categorydrug;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffEDF3FF),
          ),
          height: 90,
          //width: double.infinity,

          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  color: Color(0xffE0E0E0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(categorydrug.image),
                  ),
                ),
              ),
              Text(
                categorydrug.name,
                style: TextStyle(color: Colors.black, fontSize: 16.8),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
