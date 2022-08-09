import 'package:car_court/models/favourites_manager.dart';
import 'package:flutter/material.dart';
import 'package:car_court/models/car.dart';
import 'package:provider/provider.dart';

class CarThumbnail extends StatelessWidget {
  const CarThumbnail(this.car, {Key? key}) : super(key: key);
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              // Rounded corners
              child: Image.asset(
                car.thumbnail,
                fit: BoxFit.cover, // TODO - What the hell is this anyways?
                // This tell the image how to cover its area of it's parent
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      car.name,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      car.year.toString(),
                      maxLines: 1,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              FavouriteIcon(car),
            ],
          ),
        ],
      ),
    );
  }
}

// TODO - take this out into a separate file ?
class FavouriteIcon extends StatelessWidget {
  final Car car;
  const FavouriteIcon(this.car, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavouritesManager>(
      builder: (context, favoritesManager, _) {
        return IconButton(
          onPressed: () {
            // TODO - for all of these - send in the carID
            // instead of the entire car
            if (favoritesManager.isInFavoritesList(car)) {
              favoritesManager.removeFavourite(car);
            } else {
              favoritesManager.addFavorite(car);
            }
          },
          icon: Icon(
            favoritesManager.isInFavoritesList(car)
                ? Icons.favorite
                : Icons.favorite_border,
            color: Colors.red,
          ),
        );
      },
    );
  }
}
