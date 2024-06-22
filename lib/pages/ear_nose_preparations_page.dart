import "package:flutter/material.dart";
import "package:login_register_auth/components/earAndNose_button_item.dart";
import "package:login_register_auth/pages/antiseptics_eyeAndEar_page.dart";

class earAndNose extends StatelessWidget {
  const earAndNose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Ear and Nose preparations",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff016CA5),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 0.8, left: 0.8),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            EarNoseButton(
              drugGroupName: "ANTISEPTICS FOR EYE & EAR",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return AntispEyeEarPage();
                    },
                  ),
                );
              },
            ),
            EarNoseButton(
              drugGroupName: "PREPARATIONS FOR EYE DRYNESS",
              onTap: () {},
            ),
            EarNoseButton(
              drugGroupName: "MYDRIATIC PREPARATIONS",
              onTap: () {},
            ),
            EarNoseButton(
              drugGroupName: "PREPARATIONS FOR EAR",
              onTap: () {},
            ),
            EarNoseButton(
              drugGroupName: "PREPARATIONS FOR NOSE",
              onTap: () {},
            ),
            EarNoseButton(
              drugGroupName: "DROPS FOR  GLAUCOMA",
              onTap: () {},
            ),
            EarNoseButton(
              drugGroupName: "NASAL WASH",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
