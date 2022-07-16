/// Data model holding info on cars

class Car {
  final MediaType? mediaType;
  final String? title;
  final String? url;
  final String? description;
  final int? year;
  final FuelType? fuelType;
  final int? miles;
  final int? price;

  const Car({
    this.mediaType,
    this.title,
    this.url,
    this.description,
    this.year,
    this.fuelType,
    this.miles,
    this.price,
  });

  static List<Car> cars = [
    const Car(
        mediaType: MediaType.image,
        title: "Big BMW",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. In tristique magna at orci imperdiet luctus. Ut pretium suscipit mollis. Aliquam sagittis pharetra dolor, in venenatis quam viverra sit amet. Integer placerat placerat orci a tincidunt. Sed porta quis justo eget egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. In tristique magna at orci imperdiet luctus. Ut pretium suscipit mollis. Aliquam sagittis pharetra dolor, in venenatis quam viverra sit amet. Integer placerat placerat orci a tincidunt. Sed porta quis justo eget egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id.",
        fuelType: FuelType.diesel,
        year: 1998,
        url: 'assets/BMW750iL-resize.jpeg',
        miles: 120000,
        price: 35000),
    const Car(
        mediaType: MediaType.image,
        title: "Big Merc",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. In tristique magna at orci imperdiet luctus. Ut pretium suscipit mollis. Aliquam sagittis pharetra dolor, in venenatis quam viverra sit amet. Integer placerat placerat orci a tincidunt. Sed porta quis justo eget egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. In tristique magna at orci imperdiet luctus. Ut pretium suscipit mollis. Aliquam sagittis pharetra dolor, in venenatis quam viverra sit amet. Integer placerat placerat orci a tincidunt. Sed porta quis justo eget egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id.",
        fuelType: FuelType.petrol,
        year: 2002,
        url: 'assets/Merc_B_Class.jpeg',
        miles: 4000,
        price: 23000),
    const Car(
      mediaType: MediaType.image,
      title: "Big Ford",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. In tristique magna at orci imperdiet luctus. Ut pretium suscipit mollis. Aliquam sagittis pharetra dolor, in venenatis quam viverra sit amet. Integer placerat placerat orci a tincidunt. Sed porta quis justo eget egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id. In tristique magna at orci imperdiet luctus. Ut pretium suscipit mollis. Aliquam sagittis pharetra dolor, in venenatis quam viverra sit amet. Integer placerat placerat orci a tincidunt. Sed porta quis justo eget egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas commodo quam libero, vel laoreet ipsum consectetur id.",
      fuelType: FuelType.diesel,
      year: 2011,
      url: 'assets/Focus.jpeg',
      miles: 75000,
      price: 17250,
    ),
  ];
}

/// Used to specify whether the car picture is an image or video
enum MediaType { image, video }

/// Used to specify whether the car is diesel or petrol
enum FuelType { diesel, petrol }
