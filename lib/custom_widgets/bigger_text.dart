// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BiggerText extends StatefulWidget {
  BiggerText({Key? key, required this.text, required this.setTextSizeTo})
      : super(key: key);

  double textSize = 14.0;
  final String text;
  final setTextSizeTo;

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.textSize,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.textSize = widget.setTextSizeTo;
            });
          },
          child: Text('Perbesar'),
        )
      ],
    );
  }
}
