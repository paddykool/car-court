import 'package:car_court/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

final goRouter = GoRouter(
    initialLocation: Routes.home.path,
    routes: [
      Routes.home,
    ],

    // TODO - is this needed here ?
    // refreshListenable: appStateManager, -
    // TODO - Don't think I need a re-direct either ?
    // redirect: (GoRouterState state) {
    //
    // },

    // TODO - Make an error page
    errorPageBuilder: (BuildContext context, GoRouterState state) {
      // ignore: avoid_print
      print('Error state: ${state.error}');
      // Showing the splash page on an error is a poor practice - but we'll
      // leave what page to show here as an exercise for the reader.
      return HomePage.page(key: state.pageKey);
    });
