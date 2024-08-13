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
            CardNewsWithImage(
              title: "Feriados Estudiantiles",
              description: "13 y 15 de septiembre FERIADO",
              icon: Icons.newspaper,
              imageUrl:
                  "https://scontent.fsap12-2.fna.fbcdn.net/v/t39.30808-6/325831615_1105022190174847_6553112405486633701_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=TqcPl7EW3U0Q7kNvgFWgUfO&_nc_ht=scontent.fsap12-2.fna&oh=00_AYCXA6-oejbAdrMili4DGMup_381V-Z9gNyxE50runLV2A&oe=66C0B675", // Reemplaza con la URL de tu imagen
            )
          ],
        ),
      ),
    );
  }
}
