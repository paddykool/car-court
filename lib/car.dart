/// Data model holding info on cars

class Car {
  final MediaType? mediaType;
  final String? name;
  final String? description;
  final int? year;
  final FuelType? fuelType;

  const Car({
    this.mediaType,
    this.name,
    this.description,
    this.year,
    this.fuelType,
  });
}

/// Used to specify whether the car picture is an image or video
enum MediaType { image, video }

/// Used to specify whether the car is diesel or petrol
enum FuelType { diesel, petrol }
