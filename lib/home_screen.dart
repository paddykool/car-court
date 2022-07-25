import 'package:car_court/models/tab_manager.dart';
import 'package:car_court/pages/featured_cars.dart';
import 'package:car_court/pages/list_of_cars.dart';
import 'package:car_court/pages/favourite_cars_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int selectedIndex = 0;

  List<Widget> pages = [
    FeaturedCars(),
    ListOfCars(),
    const Favourite(),
  ];

  // void setSelectedIndex(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(widget.title),
          ),
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
