import 'package:flutter/material.dart';
import 'package:rest_api/const/colors.dart';
import 'package:rest_api/pages/home_page.dart';

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
