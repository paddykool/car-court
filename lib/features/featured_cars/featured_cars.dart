import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_court/models/app_manager.dart';
import 'featured_cars_list_view.dart';

class FeaturedCars extends StatelessWidget {
  const FeaturedCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppManager>(
      builder: (context, appManager, _) {
        return FeaturedCarsListView(appManager.cars);
      },
    );
  }
}
