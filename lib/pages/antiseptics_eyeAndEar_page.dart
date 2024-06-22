import "package:flutter/material.dart";
import "package:login_register_auth/components/custom_drug_item.dart";

class AntispEyeEarPage extends StatefulWidget {
  const AntispEyeEarPage({super.key});

  @override
  State<AntispEyeEarPage> createState() => _AntispEyeEarPageState();
}

class _AntispEyeEarPageState extends State<AntispEyeEarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Antiseptics for eye & ear",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff016CA5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 211, 225, 251),
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: "Search Drugs ....",
                //contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                isDense: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Drug(
              drugName: "VIGAMOX",
              drugInfo: "Moxifloxacin 0.5%",
              drugImage: "assets/images/drugs_images/vigamox.png",
            ),
            const SizedBox(
              height: 20,
            ),
            Drug(
              drugName: "CIPROFAR",
              drugInfo: "Ciprofloxacin 0.3%",
              drugImage: "assets/images/drugs_images/ciprofloxacin.png",
            ),
            const SizedBox(
              height: 20,
            ),
            Drug(
              drugName: "OFLOX",
              drugInfo: "Ofloxacin 0.3%",
              drugImage: "assets/images/drugs_images/oflox.png",
            ),
          ],
        ),
      ),
    );
  }
}
