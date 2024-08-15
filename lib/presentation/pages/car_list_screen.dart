import 'package:car_rental_bloc/data/models/car_model.dart';
import 'package:car_rental_bloc/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListScreen extends StatelessWidget {
  final CarModel carModel;

  const CarListScreen({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        // itemCount: carModel,
        itemBuilder: (context, index) {
          // CarCard(
          //   carModel: carModel[index],
          // );
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
