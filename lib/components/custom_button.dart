import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titleButton, this.onPressed});

  final String titleButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xffC3DAFD),
      onPressed: onPressed,
      child: Text(
        titleButton,
        style: TextStyle(
          fontSize: 18,
          color: Color(0xff006BA5),
        ),
      ),
    );
  }
}
