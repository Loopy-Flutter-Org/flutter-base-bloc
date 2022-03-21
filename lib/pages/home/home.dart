import 'package:flutter/material.dart';
import 'package:loopy_base_bloc/pages/lists/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bass-Bloc'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListPage()),
              );
            },
            child: const Text('List UI'),
          )
          // ###Suni. 여기에 ElevatedButton 추가해서 UI 제작 예정
        ],
      ),
    );
  }
}
