class HotelModel {
  final String name;
  final String location;
  final double rating;
  final int numberOfReviews;
  final String description;
  final String fullAddress;
  final String image;
  final double price;

  HotelModel({
    required this.description,
    required this.fullAddress,
    required this.location,
    required this.name,
    required this.numberOfReviews,
    required this.rating,
    required this.image,
    required this.price,
  });
}

List<HotelModel> hotels = [
  HotelModel(
      description:
          "Hotel Cellai is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments",
      fullAddress: "Six Mile, Guwahati 785001",
      location: "Six Mile",
      name: "Great Hotel",
      numberOfReviews: 412,
      rating: 4.5,
      image: 'assets/hotel2.jpg',
      price: 24.67),
  HotelModel(
      description:
          "Hotel Cellai is located in the heart of the historic center of Florence in an extremely characteristic, quite and lively area within short walk distance to all sites and is surrounded by the extraordinary beauty of churches, buildings, shops and monuments",
      fullAddress: "Teok , Jorhat 785112",
      location: "Teok",
      name: "Sharma Villa",
      numberOfReviews: 450,
      rating: 4.4,
      image: 'assets/hotel3.jpg',
      price: 30.64),
];
