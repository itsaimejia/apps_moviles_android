import 'package:bar_navegacion/pages/Page2.dart';
import 'package:bar_navegacion/pages/Page3.dart';
import 'package:bar_navegacion/pages/home_page.dart';
import 'package:bar_navegacion/pages/page1.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/one': (context) => const Page1(),
        '/two': (context) => const Page2(),
        '/three': (context) => const Page3()
      },
    );
  }
}
