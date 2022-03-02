import 'package:ejemplo_expanded/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bazar App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Bazar App', style: TextStyle(fontSize: 30)),
          ),
        ),
        body: const Items(),
      ),
    );
  }
}
