import 'package:car_rental_bloc/resources/app_assets.dart';

class CarModel {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;
  final String image;

  CarModel({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
    required this.image,
  });

  // factory CarModel.fromMap(Map<String, dynamic> map) {
  //   return CarModel(
  //     model: map['model'],
  //     distance: map['distance'],
  //     fuelCapacity: map['fuelCapacity'],
  //     pricePerHour: map['pricePerHour'],
  //     image: map['image'],
  //   );
  // }
}

final List<CarModel> carsList = [
  CarModel(
    model: "Crown",
    distance: 960,
    fuelCapacity: 35,
    pricePerHour: 33,
    image: AppAssets.carImage3,
  ),
  CarModel(
    model: "Corolla",
    distance: 920,
    fuelCapacity: 38,
    pricePerHour: 35,
    image: AppAssets.carImage2,
  ),
  CarModel(
    model: "Corolla Cross",
    distance: 890,
    fuelCapacity: 45,
    pricePerHour: 40,
    image: AppAssets.carImage4,
  ),
  CarModel(
    model: "Fortuner GR",
    distance: 870,
    fuelCapacity: 50,
    pricePerHour: 45,
    image: AppAssets.carImage,
  ),
];
