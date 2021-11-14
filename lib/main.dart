// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamental/bloc/name_bloc.dart';
import 'package:flutter_fundamental/bloc/name_event.dart';
import 'package:flutter_fundamental/bloc/name_state.dart';
import 'package:flutter_fundamental/custom_widgets/custom_button.dart';
import 'package:flutter_fundamental/custom_widgets/custom_textfield.dart';
import 'package:flutter_fundamental/halaman_dua.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NameBloc>(create: (BuildContext context) => NameBloc()),
        ],
        child: Home(title: 'Test'),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();

  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Page 1'),
      ),
      body: BlocBuilder<NameBloc, NameState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: nameController,
                  onChanged: (value) {
                    context.read<NameBloc>().add(AddName(nameController.text));
                  },
                  prefixIcon: Icon(Icons.person),
                  label: Text('Your name'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  text: 'Show Name in Page 2',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanDua(name: state.name),
                      ),
                    );
                  },
                ),
                BlocBuilder<NameBloc, NameState>(
                  builder: (context, state) {
                    return CustomButton(
                      text: 'Reset Value',
                      onPressed: () {
                        nameController.text = '';
                        state.name = '';
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
