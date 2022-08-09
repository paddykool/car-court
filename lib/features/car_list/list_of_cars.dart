import 'package:flutter/material.dart';
import 'list_of_cars_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:car_court/models/app_manager.dart';

class ListOfCars extends StatelessWidget {
  ListOfCars({Key? key}) : super(key: key);

  // // Get the mock API
  // // TODO Change this to just a normal function  - no need for class?
  // final mockedAPI = MockedAPI();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppManager>(
      builder: (context, appManager, _) {
        return ListOfCarsGridView(appManager.cars);
      },
    );
  }
  // return Consumer<AppManager>(
  //   builder: (context, appManager, _) {
  //     return FutureBuilder(
  //       future: appManager.cars,
  //       builder: (context, AsyncSnapshot<List<Car>> snapshot) {
  //         if (snapshot.connectionState == ConnectionState.done) {
  //           final cars = snapshot.data ?? [];
  //           return ListOfCarsGridView(cars);
  //         } else {
  //           return const Center(
  //             child: CircularProgressIndicator(),
  //           );
  //         }
  //       },
  //     );
  //   },
  // );

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
