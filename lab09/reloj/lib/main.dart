import 'package:flutter/material.dart';
import 'package:reloj/pages/cronometer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: Container(
          alignment: Alignment.center,
          child: const Cronometer(),
        ),
      ),
    );
  }
}
