import 'package:car_court/models/car.dart';
import 'package:flutter/material.dart';
import 'package:car_court/api/mocked_api.dart';
import 'package:car_court/components/components.dart';

class ListOfCars extends StatelessWidget {
  ListOfCars({Key? key}) : super(key: key);

  // Get the mock API
  // TODO Change this to just a normal function  - no need for class?
  final mockedAPI = MockedAPI();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockedAPI.getCarList(),
      builder: (context, AsyncSnapshot<List<Car>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final cars = snapshot.data ?? [];
          return ListOfCarsGridView(cars);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

//// OLD LISTVIEW.BUILDER
// ListView.builder(
// itemCount: Car.cars.length,
// itemBuilder: (context, index) => GestureDetector(
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => CarDetails(car: Car.cars[index]),
// ),
// );
// },
// child: Padding(
// padding: EdgeInsets.only(top: 10),
// child: CarCard(Car.cars[index]),
// ),
// ),
// );
