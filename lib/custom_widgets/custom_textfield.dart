// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.label,
    this.onChanged,
  }) : super(key: key);

  TextEditingController? controller;
  Icon? suffixIcon;
  Icon? prefixIcon;
  Widget? label;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: label,
      ),
    );
  }
}
