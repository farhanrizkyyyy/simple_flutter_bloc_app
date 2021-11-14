// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_fundamental/custom_widgets/Heading.dart';
import 'package:flutter_fundamental/custom_widgets/custom_button.dart';

class HalamanDua extends StatefulWidget {
  const HalamanDua({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  final String route = '/halaman-dua';
  final String title = 'halaman-dua';

  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Heading(
                  text: 'Hello, ${widget.name}',
                  alignment: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomButton(
                text: 'Go back to Page 1',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
