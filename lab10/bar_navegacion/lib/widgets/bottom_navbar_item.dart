import 'package:flutter/material.dart';

class MyBottomNavBarItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final String routeName;
  const MyBottomNavBarItem(
      {Key? key,
      required this.iconData,
      required this.label,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, routeName);
            },
            child: Icon(
              iconData,
              color: Colors.black,
            )),
        Text(label)
      ],
    ));
  }
}
