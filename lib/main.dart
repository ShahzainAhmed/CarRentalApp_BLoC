import 'package:car_rental_bloc/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // (Initialize FirebaseCLI first to make it work)
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // initInjection();
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
