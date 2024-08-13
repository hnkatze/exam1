import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam1/components/multi_compo.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCompo(title: "Home"),
      drawer: const DrawerMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                height: 200,
              ),
              items: imgList
                  .map((item) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 1000.0,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const CardNewsWithImage(
            title: "Feriados Estudiantiles",
            description: "13 y 15 de septiembre FERIADO",
            icon: Icons.newspaper,
            imageUrl:
                "https://scontent.fsap12-2.fna.fbcdn.net/v/t39.30808-6/325831615_1105022190174847_6553112405486633701_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=TqcPl7EW3U0Q7kNvgFWgUfO&_nc_ht=scontent.fsap12-2.fna&oh=00_AYCXA6-oejbAdrMili4DGMup_381V-Z9gNyxE50runLV2A&oe=66C0B675", // Reemplaza con la URL de tu imagen
          ),
          const CardNewsWithImage(
            title: "Feriados Estudiantiles",
            description: "02 al 04 de octubre FERIADO",
            icon: Icons.newspaper,
            imageUrl:
                "https://scontent.fsap12-2.fna.fbcdn.net/v/t39.30808-6/325831615_1105022190174847_6553112405486633701_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=TqcPl7EW3U0Q7kNvgFWgUfO&_nc_ht=scontent.fsap12-2.fna&oh=00_AYCXA6-oejbAdrMili4DGMup_381V-Z9gNyxE50runLV2A&oe=66C0B675", // Reemplaza con la URL de tu imagen
          )
        ],
      ),
    );
  }
}
