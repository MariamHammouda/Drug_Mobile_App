import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  final String fieldHintText;
  final TextEditingController fieldController;
  const CustomTextField({super.key, required this.fieldHintText, required this.fieldController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: fieldController,
      decoration: InputDecoration(
        hintText: fieldHintText,
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}



// //TextFormField(
//       decoration: InputDecoration(
//         hintText: fieldHintText,
//         contentPadding: EdgeInsets.symmetric(vertical: 15),
//         filled: true,
//         fillColor: Color.fromARGB(255, 213, 211, 211),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(color: Colors.white),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(color: Colors.white),
//         ),
//       ),
//     );