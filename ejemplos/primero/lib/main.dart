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
    return Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            color: Colors.red,
            child: Padding(
                padding: const EdgeInsets.all(150),
                child: Container(
                  color: Colors.purple,
                )),
          ),
        ));
  }
}
