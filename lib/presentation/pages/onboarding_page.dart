import 'package:car_rental_bloc/presentation/pages/car_list_screen.dart';
import 'package:car_rental_bloc/resources/app_assets.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2, // will take 2 times the space of the other Expanded widget
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.onboardingImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            // flex 1 by default
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Premium cars. \nEnjoy the luxury',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Premium and prestige car daily rental. \nExperience the thrill at a lower price',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => CarListScreen(),
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Let\'s Go',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
