import 'package:flutter/material.dart';
import 'package:car_court/home_screen.dart';
import 'package:car_court/car_theme.dart';
import 'package:provider/provider.dart';
import 'package:car_court/models/tab_manager.dart';
import 'package:car_court/models/favourites_manager.dart';

// TODO - Put managers in a barrel file... and any other stuff like screens

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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (BuildContext context) => TabManager(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => FavouritesManager(),
          ),
        ],
        child: HomePage(title: 'Car Court'),
      ),
    );
  }
}
