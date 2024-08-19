import 'package:car_rental_bloc/data/models/car_model.dart';
import 'package:car_rental_bloc/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<CarModel>> call() async {
    return await repository.fetchCars();
  }
}
