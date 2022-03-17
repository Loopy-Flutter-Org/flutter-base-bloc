import 'package:flutter/material.dart';
import 'package:loopy_base_bloc/Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdaptiveHome(),
    );
  }
}
class AdaptiveHome extends StatelessWidget {
  const AdaptiveHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
