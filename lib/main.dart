import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:car_court/models/app_manager.dart';
import 'package:car_court/theme/car_theme.dart';
import 'package:car_court/models/favourites_manager.dart';
import 'package:car_court/models/car.dart';
import 'package:car_court/navigation/navigation.dart';
// TODO - Put managers in a barrel file... and any other stuff like screens maybe ?

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  Hive.registerAdapter(CarAdapter());
  await Hive.openBox<Car>('favourites');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = ThemeData();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => FavouritesManager(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => AppManager(),
        ),
      ],
      // child: const HomePage(title: 'Car Court'),
      child: MaterialApp.router(
        title: 'Car Court',
        theme: light(),
        darkTheme: dark(),
        routeInformationParser: goRouter.routeInformationParser,
        routeInformationProvider: goRouter.routeInformationProvider,
        routerDelegate: goRouter.routerDelegate,
      ),
    );
  }
}
