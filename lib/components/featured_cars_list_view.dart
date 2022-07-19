import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';
import 'components.dart';

class FeaturedCarsListView extends StatelessWidget {
  const FeaturedCarsListView(this.featuredCars, {Key? key}) : super(key: key);
  final List<Car> featuredCars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              // TODO - why can I not put an emoji here ?
              "Our Featured Cars",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 15,
            ),
            // TODO - I dont like Container here - see what APOD does ... try to remove
            Container(
              height:
                  400, // I think this is needed to give the listView a height ?
              // color: Colors.blue,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: featuredCars.length,
                itemBuilder: (context, index) {
                  final car = featuredCars[index];
                  return CarCard(car);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 15);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
