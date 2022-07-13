import 'package:car_court/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatefulWidget {
  final Car car;

  const CarDetails({Key? key, required this.car}) : super(key: key);

  @override
  _CarDetailsState createState() {
    return _CarDetailsState();
  }
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.car.name!)),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage(widget.car.url!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.car.year!.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.car.name!,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Copyright: P to the K',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.car.description!,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
