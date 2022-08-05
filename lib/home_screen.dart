import 'package:car_court/models/tab_manager.dart';
import 'package:car_court/pages/featured_cars.dart';
import 'package:car_court/pages/list_of_cars.dart';
import 'package:car_court/pages/favourite_cars_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'models/app_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  static Page page({LocalKey? key}) => MaterialPage<void>(
        key: key,
        child: const HomePage(title: 'Car Court'),
      );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    FeaturedCars(),
    ListOfCars(),
    const Favourite(),
  ];

  @override
  void initState() {
    super.initState();
    initialisation();
  }

  void initialisation() async {
    // populate the list of cars from the API
    // TODO - maake initiaaliseApp app return nothing if taakaing too long
    // TODO - AND have a network error pop-up
    // https://stackoverflow.com/questions/52672137/await-future-for-a-specific-time
    // See also AutoTrader app or network error behaviour
    await Provider.of<AppManager>(context, listen: false).initialiseApp();
    // Remove the splash screen once the api comes back
    FlutterNativeSplash.remove();
  }

  @override
  void dispose() {
    Hive.box('favourites').close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(widget.title),
          ),
          // Might take this out if getting all cars on startup
          // Do i need IndexedStack if API call is on the splash screen?
          body: IndexedStack(
            index: tabManager.selectedTab,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.star), label: 'Featured'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favourites')
            ],
            currentIndex: tabManager.selectedTab,
            onTap: (index) => tabManager.goTab(index), //setSelectedIndex,
          ),
        );
      },
    );
  }
}
