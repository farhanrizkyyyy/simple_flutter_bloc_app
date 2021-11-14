// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading({
    Key? key,
    required this.text,
    this.alignment,
  }) : super(key: key);

  final String text;
  TextAlign? alignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // ignore: prefer_const_constructors
      style: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: alignment ?? TextAlign.justify,
    );
  }
}
