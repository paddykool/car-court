// Model for car
// TODO - Need JSON serilise  / deserialise here
// TODO - Get some Enums going on here - https://luke-urban.medium.com/doyouevenflutter-ep-2-api-enum-mapping-888d2e72902c

// TODO can have Nullable fields here if field is optional
// final int? seats .... then in fromJson ... data['seats] as int?
class Car {
  final String id;
  final String name;
  final int year;
  final String shortDescription;
  final int price;
  final int miles;
  final String bodyType;
  final double engineSize;
  final String transmission;
  final String fuelType;
  final int doors;
  final String description;
  final String thumbnail;
  final String pic1;
  final String pic2;
  final String pic3;
  final String pic4;
  final String pic5;
  final bool featured; // TODO - make featured and featured details optional

  Car(
    this.id,
    this.name,
    this.year,
    this.shortDescription,
    this.price,
    this.miles,
    this.bodyType,
    this.engineSize,
    this.transmission,
    this.fuelType,
    this.doors,
    this.description,
    this.thumbnail,
    this.pic1,
    this.pic2,
    this.pic3,
    this.pic4,
    this.pic5,
    this.featured,
  );

  factory Car.fromJson(Map<String, dynamic> data) {
    return Car(
        data['id'] as String,
        data['name'] as String,
        data['year'] as int,
        data['shortDescription'] as String,
        data['price'] as int,
        data['miles'] as int,
        data['bodyType'] as String,
        data['engineSize'] as double,
        data['transmission'] as String,
        data['fuelType'] as String,
        data['doors'] as int,
        data['description'] as String,
        data['thumbnail'] as String,
        data['pic1'] as String,
        data['pic2'] as String,
        data['pic3'] as String,
        data['pic4'] as String,
        data['pic5'] as String,
        data['featured'] as bool);
  }
}
