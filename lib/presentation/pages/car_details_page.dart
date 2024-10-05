import 'package:car_rental_bloc/data/models/car_model.dart';
import 'package:car_rental_bloc/presentation/pages/maps_details_page.dart';
import 'package:car_rental_bloc/presentation/widgets/car_card.dart';
import 'package:car_rental_bloc/presentation/widgets/more_card.dart';
import 'package:car_rental_bloc/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsPage extends StatefulWidget {
  final CarModel carModel;
  const CarDetailsPage({super.key, required this.carModel});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });

    _controller!.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Information"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarCard(
              carModel: CarModel(
                model: widget.carModel.model,
                distance: widget.carModel.distance,
                fuelCapacity: widget.carModel.fuelCapacity,
                pricePerHour: widget.carModel.pricePerHour,
                image: widget.carModel.image,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(AppAssets.userImage),
                          ),
                          SizedBox(height: 10.h),
                          const Text(
                            "Jane Cooper",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "\$ 4,253",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MapsDetailsPage(carModel: widget.carModel),
                        ),
                      );
                    },
                    child: Container(
                      height: 170.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Transform.scale(
                          scale: _animation!.value,
                          alignment: Alignment.center,
                          child: Image.asset(
                            AppAssets.mapsImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(
                    carModel: CarModel(
                      model: "${widget.carModel.model}-1",
                      distance: widget.carModel.distance + 100,
                      fuelCapacity: widget.carModel.fuelCapacity + 100,
                      pricePerHour: widget.carModel.pricePerHour + 10,
                      image: widget.carModel.image,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  MoreCard(
                    carModel: CarModel(
                      model: "${widget.carModel.model}-2",
                      distance: widget.carModel.distance + 200,
                      fuelCapacity: widget.carModel.fuelCapacity + 200,
                      pricePerHour: widget.carModel.pricePerHour + 20,
                      image: widget.carModel.image,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  MoreCard(
                    carModel: CarModel(
                      model: "${widget.carModel.model}-3",
                      distance: widget.carModel.distance + 300,
                      fuelCapacity: widget.carModel.fuelCapacity + 300,
                      pricePerHour: widget.carModel.pricePerHour + 30,
                      image: widget.carModel.image,
                    ),
                  ),
                  SizedBox(height: 5.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
