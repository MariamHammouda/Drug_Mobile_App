// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({super.key, required this.textTitle});

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
