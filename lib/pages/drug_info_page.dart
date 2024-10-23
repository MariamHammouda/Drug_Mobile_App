import 'package:flutter/material.dart';
import 'package:login_register_auth/components/custom_info_row.dart';
import 'package:login_register_auth/pages/antiseptics_eyeAndEar_page.dart';

class DrugInfo extends StatefulWidget {
  const DrugInfo({super.key});

  @override
  State<DrugInfo> createState() => _DrugInfoState();
}

class _DrugInfoState extends State<DrugInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff006BA5),
                Color(0xff002f49),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return AntispEyeEarPage();
                          },
                        ),
                      );
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/drugs_images/vigamox.png",
                height: 250,
                width: 250,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "VIGAMOX",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "67.50 EGP",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff006BA5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Active Ingredients :",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Moxifloxacin 0.5%  (5ml)",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  InfoRow(
                    title: "Form : ",
                    info: "Drops",
                  ),
                  InfoRow(
                    title: "Notes : ",
                    info: "Alcon",
                  ),
                  InfoRow(
                    title: "Dose : ",
                    info: "1x3",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Medical Description:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "An antibiotic belonging to the Fluoroquinolone group used to treat bacterial conjunctivitis.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Indication & Usage:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "- Bacterial Conjunctivitis:\n- Adults: Instill 1 drop into affected eye(s) 2-3 times daily for 7 days.\n- Pediatric (≥4 months, children, adolescents): Instill 1 drop into affected eye(s) 2 times daily for 7 days.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
