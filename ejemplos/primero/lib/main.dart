import 'package:flutter/material.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InmutableWidget(),
    );
  }
}

class InmutableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: const [Text("Texto 1"), Text("Texto 2")],
        ),
        Column(
          children: const [Text("Texto 3"), Text("Texto 4")],
        ),
        Column(
          children: const [Text("Texto 5"), Text("Texto 6")],
        )
      ],
    );
    ;
  }
}
