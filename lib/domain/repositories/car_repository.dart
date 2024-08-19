import 'package:car_rental_bloc/data/models/car_model.dart';

abstract class CarRepository {
  Future<List<CarModel>> fetchCars();
}
