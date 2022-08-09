import 'package:flutter/material.dart';
import 'list_of_cars_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:car_court/models/app_manager.dart';

class ListOfCars extends StatelessWidget {
  const ListOfCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppManager>(
      builder: (context, appManager, _) {
        return ListOfCarsGridView(appManager.cars);
      },
    );
  }
}
