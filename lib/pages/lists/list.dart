import 'package:flutter/material.dart';
import 'package:flutter_list_demo/default_list_page.dart';
import 'package:flutter_list_demo/builder_list_page.dart';
import 'package:flutter_list_demo/separated_list_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter List Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DefaultListPage()),
                );
              },
              child: const Text('Default ListView Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuilderListPage()),
                );
              },
              child: const Text('Builder ListView Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SeparatedListPage()),
                );
              },
              child: const Text('SeparatorBuilder ListView Page'),
            ),
          ],
        ),
      ),
    );
  }
}
