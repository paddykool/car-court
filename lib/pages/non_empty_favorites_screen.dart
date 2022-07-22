import 'package:car_court/models/favourites_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/car.dart';
import 'package:car_court/car_theme.dart';

class NonEmptyFavouritesScreen extends StatelessWidget {
  const NonEmptyFavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavouritesManager>(
      builder: (context, favouriteManager, _) {
        List<Car> favourites = favouriteManager.favourites;
        return ListView.builder(
          itemCount: favourites.length,
          itemBuilder: (context, index) {
            return FavouriteCard(favourites[index]);
          },
        );
      },
    );
  }
}

class FavouriteCard extends StatelessWidget {
  final Car favourite;
  const FavouriteCard(this.favourite, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              width: 120,
              child: Image.asset(favourite.thumbnail),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(favourite.name, style: lightText.headline2),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(favourite.shortDescription,
                      textAlign:
                          TextAlign.end), // No idea why I need this nere :(
                  Text("Year: ${favourite.year.toString()}"),
                  Text("Price ${favourite.price.toString()}"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
