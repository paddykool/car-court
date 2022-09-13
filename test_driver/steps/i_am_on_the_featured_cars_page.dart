import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/app_page.dart';

class IAmOnTheFeaturedCarsPage extends GivenWithWorld<FlutterWorld> {
  IAmOnTheFeaturedCarsPage()
      : super(StepDefinitionConfiguration()
          ..timeout = const Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    AppPage appPage = AppPage(world.driver!);
    expect(await appPage.getFeatureCarsTitle(), "Our Featured Cars");
  }

  @override
  RegExp get pattern => RegExp(r"I am on the Featured Cars Page");
}

StepDefinitionGeneric iAmOnTheFeaturedCarsPage() {
  return given<FlutterWorld>(
    'I am on the Featured Cars Page',
    (context) async {
      AppPage appPage = AppPage(context.world.driver!);
      context.expect(await appPage.getFeatureCarsTitle(), "Our Featured Cars");
    },
  );
}
