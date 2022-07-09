import 'package:flutter/material.dart';
import 'package:car_court/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Car Court',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.purple,
        secondary: Colors.purpleAccent,
      )),
      home: const HomePage(title: 'Car Court'),
    );
  }
}
