// ignore_for_file: unused_import

import 'package:car_rental_bloc/presentation/pages/car_details_page.dart';
import 'package:car_rental_bloc/presentation/pages/car_list_screen.dart';
import 'package:car_rental_bloc/presentation/pages/maps_details_page.dart';
import 'package:car_rental_bloc/presentation/pages/onboarding_page.dart';
import 'package:car_rental_bloc/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: OnboardingPage(),
      ),
    );
  }
}
