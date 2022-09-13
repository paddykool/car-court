import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_court/models/app_manager.dart';

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
          const SizedBox(height: 25),
          const Text("Get Some Favorites In Our Car List"),
          MaterialButton(
            key: ValueKey('goToListButton'),
            textColor: Colors.white,
            child: const Text("Browse Our Cars", key: ValueKey('goToListText')),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: Colors.purple,
            onPressed: () {
              Provider.of<AppManager>(context, listen: false).goTab(1);
            },
          )
        ],
      ),
    );
  }
}
