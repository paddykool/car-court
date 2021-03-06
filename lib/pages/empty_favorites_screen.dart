import 'package:car_court/models/tab_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmptyFavoritesScreen extends StatelessWidget {
  const EmptyFavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.asset('assets/images/No Favorites 1.jpeg'),
            ),
          ),
          Text(
            "No Favorites",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 25),
          Text("Get Some Favorites In Our Car List"),
          MaterialButton(
            textColor: Colors.white,
            child: Text("Browse Our Cars"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: Colors.purple,
            onPressed: () {
              Provider.of<TabManager>(context, listen: false).goTab(1);
            },
          )
        ],
      ),
    );
  }
}
