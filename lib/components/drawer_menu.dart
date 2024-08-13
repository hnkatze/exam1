import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: Text('Exam Navigator'),
          ),
          ListTile(
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/news');
            },
          ),
          ListTile(
            title: const Text('Podcast'),
            onTap: () {
              Navigator.pushNamed(context, '/podcast');
            },
          ),
          ListTile(
            title: const Text('Lista de Tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/todo');
            },
          ),
          ListTile(
            title: const Text('Cambio De Moneda'),
            onTap: () {
              Navigator.pushNamed(context, '/change');
            },
          ),
        ],
      ),
    );
  }
}
