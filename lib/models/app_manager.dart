import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';
import '../api/mocked_api.dart';

class AppManager extends ChangeNotifier {
  List<Car> _cars = [];
  int _selectedTab = 0;

  int get selectedTab => _selectedTab;

  void goTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }

  // TODO - put a didLoad bool within 5 secounds here to catch api errors of too slow api??
  // https://stackoverflow.com/questions/52672137/await-future-for-a-specific-time
  List<Car> get cars => List.unmodifiable(_cars);

  Future<void> initialiseApp() async {
    // Populate car list from API
    _cars = await MockedAPI().getCarList();
    notifyListeners();
  }

  Car getCar(String carId) {
    return _cars.singleWhere((car) => car.id == carId);
  }

  // Update the list of cars from the api..... Not sure this is needed
}
