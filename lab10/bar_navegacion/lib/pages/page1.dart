import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Page 1")),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
