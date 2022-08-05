import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';
import 'package:provider/provider.dart';

import 'models/app_manager.dart';

class CarDetails extends StatefulWidget {
  final String carId;

  const CarDetails({Key? key, required this.carId}) : super(key: key);

  static Page page({LocalKey? key, required String carId}) => MaterialPage(
        key: key,
        child: CarDetails(carId: carId),
      );

  @override
  _CarDetailsState createState() {
    return _CarDetailsState();
  }
}

// TODO - does this actually need to be stateful?
class _CarDetailsState extends State<CarDetails> {
  double _sliderScalar = 1.0;
  // This is required as there are 2 controllers on the screen..
  final TransformationController _controller = TransformationController();

  // // Get the car here from the ID... maybe just use provider.of ??
  // final Car car = Provider.of<>

  @override
  Widget build(BuildContext context) {
    return Consumer<AppManager>(
      builder: (context, appManager, _) {
        // Get the car object
        final car = appManager.getCar(widget.carId);

        return Scaffold(
          appBar: AppBar(
            title: (Text(car.name)),
          ),
          body: SafeArea(
            child: Column(
              children: [
                // This is the picture of the car...
                Expanded(
                  child: InteractiveViewer(
                    transformationController: _controller,
                    child: Image(
                      image: AssetImage(car.thumbnail),
                      fit: BoxFit.cover,
                    ),
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
                      _controller.value =
                          Matrix4.identity().scaled(_sliderScalar);
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
                        child: _carDetailsList(car),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _carDetailsList(Car car) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          car.year.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          car.name,
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
          car.description,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
