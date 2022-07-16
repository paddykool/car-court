import 'package:flutter/material.dart';
import 'car_details.dart';
import 'car.dart';
import 'car_card.dart';

class ListOfCars extends StatelessWidget {
  const ListOfCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Car.cars.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarDetails(car: Car.cars[index]),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: CarCard(Car.cars[index]),
        ),
      ),
    );
  }
}
