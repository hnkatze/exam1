import 'package:exam1/components/multi_compo.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCompo(title: "News"),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardNews(
              title: "Feriados Estudiantiles",
              description: "13 y 15 de septiembre FERIADO",
              icon: Icons.newspaper,
            ),
          ],
        ),
      ),
    );
  }
}
