import 'package:flutter/material.dart';
import 'package:football_news/screens/menu.dart';
import 'package:football_news/screens/newslist_form.dart';
// import 'package:football_news/screens/view_news_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                Text(
                  'Football News',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh berita sepak bola terkini di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add News'),
            // bagian redirection ke NewsFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewsFormPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.article_outlined),
            title: const Text('View News'),
            // onTap: () {
            //   // mengganti ScaffoldMessenger dengan navigasi ke halaman baru
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const ViewNewsPage()),
            //   );
            // },
          ),
        ],
      ),
    );
  }
}