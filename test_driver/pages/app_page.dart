import 'package:flutter_driver/flutter_driver.dart';

class AppPage {
  final navBarFavourites = find.byValueKey('favourites');
  final favouritesScreenListText = find.byValueKey('goToListText');
  final favouritesScreenListButton = find.byValueKey('goToListButton');
  final featureCarsTitle = find.byValueKey("Feature Cars Title");

  final FlutterDriver _driver;

  AppPage(this._driver);

  Future<void> clickFavourites() async {
    await _driver.tap(navBarFavourites);
  }

  Future<String> getFavouritesScreenText() async {
    return await _driver.getText(favouritesScreenListText);
  }

  Future<void> clickFavouriteScreenButton() async {
    await _driver.tap(favouritesScreenListButton);
  }

  Future<String> getFeatureCarsTitle() async {
    return await _driver.getText(featureCarsTitle);
  }
}
