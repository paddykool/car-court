import 'package:go_router/go_router.dart';
import 'package:car_court/home_screen.dart';
import 'package:car_court/features/car_details/car_details.dart';

class Routes {
  // TODO - implement a splash screen
  // static final splash = GoRoute(
  //   path: '/splash',
  //
  // );

  static final home = GoRoute(
    path: '/',
    pageBuilder: (context, state) => HomePage.page(
      key: state.pageKey,
    ),
    routes: [],
  );

// static final carDetails = GoRoute(
//   path: 'car_details',
//   pageBuilder: (context, state) {
//     var caar = state.params['car_id']!);
//     return CarDetails.page(key: state.pageKey,car: car);
//   }
// );

}
