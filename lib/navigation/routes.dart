import 'package:go_router/go_router.dart';
import 'package:car_court/home_screen.dart';
import 'package:car_court/features/car_details/car_details.dart';

class Routes {
  static final home = GoRoute(
    path: '/',
    pageBuilder: (context, state) => HomePage.page(
      key: state.pageKey,
    ),
    routes: [carDetails],
  );

  static final carDetails = GoRoute(
    path: 'car_details/:id',
    pageBuilder: (context, state) =>
        CarDetails.page(carId: state.params['id']!),
  );
}
