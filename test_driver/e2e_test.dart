import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'pages/app_page.dart';

void main() {
  late FlutterDriver driver;
  late AppPage appPage;

  group('Car Court App', () {
    // // Finders
    // final navBarFavourites = find.byValueKey('favourites');
    // final favouritesScreenListText = find.byValueKey('goToListText');
    // final favouritesScreenListButton = find.byValueKey('goToListButton');

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      appPage = AppPage(driver);
    });

    tearDownAll(() async {
      driver.close();
    });

    test('Click Favourites', () async {
      Future.delayed(const Duration(seconds: 4));
      await appPage.clickFavourites();
      Future.delayed(const Duration(seconds: 4));
      expect(await appPage.getFavouritesScreenText(), 'Browse Our Cars');
    });

    test('Go to Car List', () async {
      Future.delayed(const Duration(seconds: 4));
      await appPage.clickFavouriteScreenButton();
      Future.delayed(const Duration(seconds: 8));
      // TODO - put in some sort of expect
    });
  });
}
