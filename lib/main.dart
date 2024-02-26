import 'package:flutter/material.dart';
// import 'package:pomotime_app/pages/splash_page.dart';
import 'package:pomotime_app/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
