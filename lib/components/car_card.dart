import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';

class CarCard extends StatelessWidget {
  const CarCard(this.car, {Key? key}) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(car.thumbnail),
            ),
          ),
          Text(
            car.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            car.year.toString(),
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

// Container(
// // TODO: Don't like using constraints here at all
// // TODO - what happens if it's on a tablet ?
// // TODO - JUST USE A CARD LIKE IT WAS BEFORE.....
// // Maybe use a card with a container inside it ?
// // Using constraints here is absolute pants
// // Ya screw this - use a normal card instead...
// constraints: const BoxConstraints.expand(width: 350, height: 450),
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(car.url!),
// fit: BoxFit.cover,
// ),
// // borderRadius: ,
// ),
// child: Stack(
// children: [
// Text(
// car.title!,
// style: darkText.headline2,
// ),
// Positioned(
// top: 32,
// child: Text(
// car.year.toString(),
// style: darkText.bodyText1,
// ),
// )
// ],
// ),
// ),
