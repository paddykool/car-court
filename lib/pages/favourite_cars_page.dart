import 'package:car_court/pages/non_empty_favorites_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'empty_favorites_screen.dart';
import 'package:car_court/models/favourites_manager.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFavoritesPopulated =
        Provider.of<FavouritesManager>(context, listen: false)
            .isFavouritesPopulated();
    return isFavoritesPopulated
        ? const NonEmptyFavouritesScreen()
        : const EmptyFavoritesScreen();
  }
}
