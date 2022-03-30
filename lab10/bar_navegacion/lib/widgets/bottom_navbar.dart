import 'package:flutter/material.dart';

import 'bottom_navbar_item.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      color: Colors.blue[100],
      child: SafeArea(
        child: Row(
          children: const [
            MyBottomNavBarItem(
              iconData: Icons.home_filled,
              label: "Home",
              routeName: '/',
            ),
            MyBottomNavBarItem(
              iconData: Icons.looks_one_outlined,
              label: "Page 1",
              routeName: '/one',
            ),
            MyBottomNavBarItem(
              iconData: Icons.looks_two_outlined,
              label: "Page 2",
              routeName: '/two',
            ),
            MyBottomNavBarItem(
              iconData: Icons.theater_comedy_outlined,
              label: "Page 3",
              routeName: '/three',
            ),
          ],
        ),
      ),
    );
  }
}
