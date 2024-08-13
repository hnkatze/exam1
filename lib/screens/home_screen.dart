import 'package:exam1/components/multi_compo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCompo(title: 'Home'),
      drawer: DrawerMenu(),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
