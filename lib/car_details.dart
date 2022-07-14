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
  double _sliderScalar = 1.0;
  final TransformationController _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.car.name!)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // This is the picture of the car...
            InteractiveViewer(
              transformationController: _controller,
              child: Image(
                image: AssetImage(widget.car.url!),
                fit: BoxFit.fitWidth,
              ),
            ),
            // This is everything below the picture
            Slider(
              min: 1,
              max: 4.0,
              divisions: 20,
              value: _sliderScalar,
              onChanged: (value) {
                setState(() {
                  _sliderScalar = value;
                  _controller.value = Matrix4.identity().scaled(_sliderScalar);
                });
              },
              activeColor: Colors.purple[800],
              inactiveColor: Colors.purple[200],
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: _carDetailsList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _carDetailsList() {
    return Column(
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
    );
  }
}
