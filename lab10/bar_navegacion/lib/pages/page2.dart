import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Page 2")),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
