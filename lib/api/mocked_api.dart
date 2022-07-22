import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:car_court/models/car.dart';

class MockedAPI {
  // Mocked service to bring back the list of cars
  Future<List<Car>> getCarList() async {
    // Mock a 3 second delay when getting the list of cars
    await Future.delayed(const Duration(milliseconds: 200));

    // Get da json
    final dataString = await rootBundle.loadString('assets/mock_car_data.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Create the List of cars
    final cars = <Car>[];
    // Note - json['cars'] returns a List - no need for... var myList = json['cars'] as List
    json['cars'].forEach((value) {
      cars.add(Car.fromJson(value));
    });

    return cars;
  }
}
