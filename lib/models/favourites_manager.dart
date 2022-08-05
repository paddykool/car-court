// TODO - better to use ListenableProivider - https://medium.com/@lumeilin301/using-hive-in-flutter-c8c3a37dd21
import 'package:flutter/material.dart';
import 'car.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavouritesManager extends ChangeNotifier {
  void addFavorite(Car car) {
    final favouritesBox = Hive.box<Car>('favourites');
    favouritesBox.put(car.id, car);
    notifyListeners();
  }

  // TODO - make this take the car ID instead of entire car
  void removeFavourite(car) {
    final favouritesBox = Hive.box<Car>('favourites');
    favouritesBox.delete(car.id);
    notifyListeners();
  }

  bool isInFavoritesList(Car car) {
    final listOfFavorites =
        Hive.box<Car>('favourites').keys.toList().cast<String>();
    return listOfFavorites.contains(car.id);
  }

  bool isFavouritesPopulated() {
    return Hive.box<Car>('favourites').isNotEmpty;
  }
}
