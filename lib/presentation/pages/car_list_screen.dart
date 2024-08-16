import 'package:car_rental_bloc/data/models/car_model.dart';
import 'package:car_rental_bloc/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<CarModel> carsList = [
    CarModel(
      model: "Fortuner GR",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    CarModel(
      model: "Fortuner GR",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    CarModel(
      model: "Fortuner GR",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: carsList.length,
        itemBuilder: (context, index) {
          return CarCard(carModel: carsList[index]);
        },
      ),
    );
  }
}

/* 
 body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          } else if (state is CarsError) {
            return Center(
              child: Text('error : ${state.message}'),
            );
          }
          return Container();
        },
      ),
 */
