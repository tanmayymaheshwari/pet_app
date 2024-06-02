import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/behaviour_consultation.dart';
import 'package:pet_app/onboarding/widgets/best_seller.dart';
import 'package:pet_app/onboarding/widgets/condition_consultation.dart';
import 'package:pet_app/onboarding/widgets/grooming_package.dart';
import 'package:pet_app/onboarding/widgets/home_consultation.dart';
import 'package:pet_app/onboarding/widgets/onboarding_image.dart';
import 'package:pet_app/onboarding/widgets/onboarding_searchbar.dart';
import 'package:pet_app/onboarding/widgets/select_a_service.dart';
import 'package:pet_app/onboarding/widgets/symptom_consultation.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 254, 253, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 113, 113),
        // Uncomment and update the following section if needed
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Text(
        //           'Address Name',
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           'Address Location',
        //           style: TextStyle(
        //             color: Colors.grey[600],
        //           ),
        //         ),
        //       ],
        //     ),
        //     const Spacer(),
        //     const CircleAvatar(
        //       backgroundImage: null,
        //     ),
        //   ],
        // ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OnboardingImage(imgUrl: "assets/onboarding_image_1.png"), // supposed to be an ad?
            OnboardingSearchbar(),
            const SelectAService(),
            const BestSeller(),
            
            HomeConsultation(),
            OnboardingImage(imgUrl: "assets/onboarding_image_2.png"),

            ConditionConsultation(),
            GroomingPackage(),

            SymptomConsultation(),
            BehaviourConsultation(),

            OnboardingImage(imgUrl: "assets/onboarding_image_3.png"),
            OnboardingImage(imgUrl: "assets/onboarding_image_4.png"),
            
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, -1), // Shadow position
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.access_time),
              //   label: "Orders",
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            showUnselectedLabels: false,
            selectedItemColor: Color.fromRGBO(237, 109, 78, 1),
            unselectedItemColor: Color.fromRGBO(179, 177, 176, 1),
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
