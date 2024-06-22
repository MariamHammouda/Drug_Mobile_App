import "package:flutter/material.dart";

class EarNoseButton extends StatelessWidget {
  EarNoseButton({required this.drugGroupName, required this.onTap});

  final String? drugGroupName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: ElevatedButton(
          onPressed: () {
            onTap();
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: 55,
                  height: 55,
                  child: Image.asset("assets/images/ear_nose_prep_images/pill.png"),
                ),
              ),
              Text(
                drugGroupName!,
                style: TextStyle(color: Colors.black, fontSize: 15.2),
              ),
              Spacer(
                flex: 1,
              ),
              Icon(Icons.navigate_next),
            ],
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, 80),
            backgroundColor: Color(0xffEDF3FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),
      ),
    );
  }
}
