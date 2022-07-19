import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';
import 'package:car_court/components/components.dart';

class ListOfCarsGridView extends StatelessWidget {
  const ListOfCarsGridView(this.listOfCars, {Key? key}) : super(key: key);
  final List<Car> listOfCars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 15,
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: listOfCars.length,
        itemBuilder: (context, index) {
          return CarThumbnail(listOfCars[index]);
        },
      ),
    );
  }
}
