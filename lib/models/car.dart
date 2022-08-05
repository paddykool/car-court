import 'package:hive/hive.dart';

part 'car.g.dart';

// Model for car
// TODO - Need JSON serilise - toJson
// TODO - Get some Enums going on here - https://luke-urban.medium.com/doyouevenflutter-ep-2-api-enum-mapping-888d2e72902c

@HiveType(typeId: 0)
class Car extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int year;
  @HiveField(3)
  final String shortDescription;
  @HiveField(4)
  final int price;
  @HiveField(5)
  final int miles;
  @HiveField(6)
  final String bodyType;
  @HiveField(7)
  final double engineSize;
  @HiveField(8)
  final String transmission;
  @HiveField(9)
  final String fuelType;
  @HiveField(10)
  final int doors;
  @HiveField(11)
  final String description;
  @HiveField(12)
  final String thumbnail;
  @HiveField(13)
  final String pic1;
  @HiveField(14)
  final String pic2;
  @HiveField(15)
  final String pic3;
  @HiveField(16)
  final String pic4;
  @HiveField(17)
  final String pic5;
  @HiveField(18)
  final bool? featured;
  @HiveField(19)
  final bool? favourite;

  Car({
    required this.id,
    required this.name,
    required this.year,
    required this.shortDescription,
    required this.price,
    required this.miles,
    required this.bodyType,
    required this.engineSize,
    required this.transmission,
    required this.fuelType,
    required this.doors,
    required this.description,
    required this.thumbnail,
    required this.pic1,
    required this.pic2,
    required this.pic3,
    required this.pic4,
    required this.pic5,
    this.featured,
    this.favourite,
  });

  factory Car.fromJson(Map<String, dynamic> data) {
    return Car(
      id: data['id'] as String,
      name: data['name'] as String,
      year: data['year'] as int,
      shortDescription: data['shortDescription'] as String,
      price: data['price'] as int,
      miles: data['miles'] as int,
      bodyType: data['bodyType'] as String,
      engineSize: data['engineSize'] as double,
      transmission: data['transmission'] as String,
      fuelType: data['fuelType'] as String,
      doors: data['doors'] as int,
      description: data['description'] as String,
      thumbnail: data['thumbnail'] as String,
      pic1: data['pic1'] as String,
      pic2: data['pic2'] as String,
      pic3: data['pic3'] as String,
      pic4: data['pic4'] as String,
      pic5: data['pic5'] as String,
      featured: data['featured'] as bool?, // Makes it nullable
      favourite: data['favourite'] as bool?, // Makes it nullable
    );
  }
}
