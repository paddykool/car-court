import 'package:flutter/material.dart';
import 'car.dart';
import 'package:collection/collection.dart';

class FavouritesManager extends ChangeNotifier {
  List<Car> _favourites = [];

  // TODO - Should the list returned be 'List.unmodifiable()... ??
  List<Car> get favourites => _favourites;

  void addFavorite(car) {
    _favourites.add(car);
    // TODO - Do I need to notify here ????
    // Cause the favorites screen is not displayed when this is called anywqys
    // is this making al lthe cards rebuild after clicking the heart ?
    notifyListeners();
  }

  void removeFavourite(car) {
    _favourites.removeWhere((carFromList) => carFromList.id == car.id);
    notifyListeners();
  }

  bool isInFavoritesList(car) {
    // TODO - Do I need to define my own == here ?
    // Hmm.... not sure this'll work
    // return _favorites.contains(car);
    Car? foundCar = _favourites
        .singleWhereOrNull((carFromList) => car.id == carFromList.id);
    return foundCar != null ? true : false;
  }

  bool isFavouritesPopulated() {
    return _favourites.isNotEmpty;
  }
}
