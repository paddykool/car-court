import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';
import 'package:car_court/api/mocked_api.dart';
import 'package:car_court/components/components.dart';

class FeaturedCars extends StatelessWidget {
  FeaturedCars({Key? key}) : super(key: key);

  // Get the mock API
  // TODO Change this to just a normal function  - no need for class?
  final mockedAPI = MockedAPI();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockedAPI.getCarList(),
        builder: (context, AsyncSnapshot<List<Car>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // TODO do I need a conditional op here (??) ?
            final cars = snapshot.data ?? [];
            return FeaturedCarsListView(cars);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
