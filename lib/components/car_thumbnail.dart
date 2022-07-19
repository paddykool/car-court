import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';

class CarThumbnail extends StatelessWidget {
  const CarThumbnail(this.car, {Key? key}) : super(key: key);
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              child: Image.asset(
                car.thumbnail,
                fit: BoxFit.cover, // TODO - What the hell is this anyways?
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            car.name,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            car.year.toString(),
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
