import 'package:flutter/material.dart';
import 'package:login_register_auth/components/custom_drug_item.dart';

class AntispEyeEarPage extends StatefulWidget {
  const AntispEyeEarPage({super.key});

  @override
  State<AntispEyeEarPage> createState() => _AntispEyeEarPageState();
}

class _AntispEyeEarPageState extends State<AntispEyeEarPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> allDrugs = [
    {'drugName': 'VIGAMOX', 'drugInfo': 'Moxifloxacin 0.5%', 'drugImage': 'assets/images/drugs_images/vigamox.png'},
    {'drugName': 'CIPROFAR', 'drugInfo': 'Ciprofloxacin 0.3%', 'drugImage': 'assets/images/drugs_images/ciprofloxacin.png'},
    {'drugName': 'OFLOX', 'drugInfo': 'Ofloxacin 0.3%', 'drugImage': 'assets/images/drugs_images/oflox.png'},
    {'drugName': 'ZYMAR', 'drugInfo': 'Gatifloxacin 0.3%', 'drugImage': 'assets/images/drugs_images/zymar_drops.png'},
    {'drugName': 'OPTO Q3', 'drugInfo': 'Lomefloxacin 0.3%', 'drugImage': 'assets/images/drugs_images/opto_drops.png'},
    {'drugName': '  OKACIN', 'drugInfo': '  Norfloxacin 0.3%', 'drugImage': 'assets/images/drugs_images/okacin_drops.png'},
  ];

  List<Map<String, String>> filteredDrugs = [];

  @override
  void initState() {
    super.initState();
    filteredDrugs = allDrugs;
    _searchController.addListener(_filterDrugs);
  }

  void _filterDrugs() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredDrugs = allDrugs.where((drug) {
        return drug['drugName']!.toLowerCase().contains(query) || drug['drugInfo']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterDrugs);
    _searchController.dispose();
    super.dispose();
  }

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
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 211, 225, 251),
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: "Search Drugs ....",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                isDense: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredDrugs.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Drug(
                        drugName: filteredDrugs[index]['drugName']!,
                        drugInfo: filteredDrugs[index]['drugInfo']!,
                        drugImage: filteredDrugs[index]['drugImage']!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
