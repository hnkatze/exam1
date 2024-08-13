import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Exam Navigator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
              context.go('/');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Noticias'),
            onTap: () {
              Navigator.pop(context);
              context.go('/news');
            },
          ),
          ListTile(
            title: const Text('Podcast'),
            onTap: () {
              Navigator.pop(context);
              context.go('/podcast');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Lista de Tareas'),
            onTap: () {
              Navigator.pop(context);
              context.go('/todo');
            },
          ),
          ListTile(
            title: const Text('Cambio De Moneda'),
            onTap: () {
              Navigator.pop(context);
              context.go('/change');
            },
          ),
        ],
      ),
    );
  }
}

class AppBarCompo extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCompo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class CardNews extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const CardNews(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(icon),
              title: Text(title),
              subtitle: Text(description),
            ),
          ],
        ),
      ),
    );
  }
}

class CardNewsWithImage extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final String imageUrl;

  const CardNewsWithImage({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Icon(icon),
                title: Text(title),
                subtitle: Text(description),
              ),
            ),
            SizedBox(
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
