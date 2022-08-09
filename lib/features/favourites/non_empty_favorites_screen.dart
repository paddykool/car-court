import 'package:flutter/material.dart';
import 'package:car_court/models/favourites_manager.dart';
import 'package:car_court/models/car.dart';
import 'package:car_court/theme/car_theme.dart';
import 'package:car_court/features/car_details/car_details.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NonEmptyFavouritesScreen extends StatelessWidget {
  final FavouritesManager favouritesManager;
  const NonEmptyFavouritesScreen(this.favouritesManager, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<Car>>(
      // TODO - Make a helper method for getting the box
      valueListenable: Hive.box<Car>('favourites').listenable(),
      builder: (context, box, _) {
        final favourites = box.values.toList().cast<Car>();
        return ListView.builder(
          controller: ScrollController(), // TODO - why this again?
          itemCount: favourites.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(favourites[index].id),
              direction: DismissDirection.horizontal,
              background: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    // TODO - Put this 3 times and put as a component
                    Icon(
                      Icons.delete_forever,
                      color: Colors.white,
                      size: 50.0, // What's the deal if this isn't specified ?
                    ),
                    Icon(
                      Icons.delete_forever,
                      color: Colors.white,
                      size: 50.0, // What's the deal if this isn't specified ?
                    )
                  ],
                ),
              ),
              onDismissed: (direction) =>
                  favouritesManager.removeFavourite(favourites[index]),
              child: FavouriteCard(favourites[index]),
            );
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
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  CarDetails(carId: favourite.id),
            ),
          );
        },
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
      ),
    );
  }
}
