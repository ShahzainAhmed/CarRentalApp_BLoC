import 'package:car_rental_bloc/data/models/car_model.dart';
import 'package:car_rental_bloc/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarCard extends StatelessWidget {
  final CarModel carModel;

  const CarCard({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => CardDetailsPage(
        //         car: car,
        //       ),
        //     ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.h),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
            ]),
        child: Column(
          children: [
            Image.asset(AppAssets.carImage, height: 120),
            Text(
              carModel.model,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.gpsImage),
                        Text(' ${carModel.distance.toStringAsFixed(0)}km')
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(AppAssets.pumpImage),
                        Text(' ${carModel.fuelCapacity.toStringAsFixed(0)}L')
                      ],
                    ),
                  ],
                ),
                Text(
                  '\$${carModel.pricePerHour.toStringAsFixed(2)}/h',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
