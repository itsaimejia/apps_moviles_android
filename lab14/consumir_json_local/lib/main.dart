import 'package:consumir_json_local/const/colors.dart';
import 'package:consumir_json_local/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Listado de estudiantes'),
            backgroundColor: appBarColor,
          ),
          body: const HomePage()),
    );
  }
}
