import 'package:flutter/material.dart';
import 'package:car_court/home_screen.dart';
import 'package:car_court/car_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Car Court',
      theme: light(),
      darkTheme: dark(),
      home: const HomePage(title: 'Car Court'),
    );
  }
}
