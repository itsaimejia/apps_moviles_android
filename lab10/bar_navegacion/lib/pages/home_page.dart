import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home")),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
