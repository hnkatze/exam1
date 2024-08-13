import 'package:exam1/components/multi_compo.dart';
import 'package:flutter/material.dart';

class ChangeScreen extends StatefulWidget {
  const ChangeScreen({super.key});

  @override
  State<ChangeScreen> createState() => _ChangeScreenState();
}

class _ChangeScreenState extends State<ChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCompo(title: "divisas"),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Change Screen'),
          ],
        ),
      ),
    );
  }
}
