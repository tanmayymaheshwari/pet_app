import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/behaviour_consultation.dart';
import 'package:pet_app/onboarding/widgets/best_seller.dart';
import 'package:pet_app/onboarding/widgets/condition_consultation.dart';
import 'package:pet_app/onboarding/widgets/grooming_package.dart';
import 'package:pet_app/onboarding/widgets/home_consultation.dart';
import 'package:pet_app/onboarding/widgets/lab_test.dart';
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
  String fullAddress =
      "24, Indra nagar, Gachibowli circle, Hyderabad, Telangana, India";
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showFullAddress(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Full Address"),
          content: Text(fullAddress),
          actions: <Widget>[
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 254, 253, 1),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: const Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '24, Indra nagar, Gacchibowli circle..',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: () => _showFullAddress(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 242, 98, 98), // Border color
                  width: 2.0, // Border width
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/welcome_dog_icon.png'), // Replace with your profile image asset
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OnboardingImage(
                imgUrl:
                    "assets/onboarding_image_1.png"), // supposed to be an ad?
            OnboardingSearchbar(),
            const SelectAService(),
            BestSeller(),
            HomeConsultation(),
            const OnboardingImage(imgUrl: "assets/onboarding_image_2.png"),
            ConditionConsultation(),
            GroomingPackage(),
            SymptomConsultation(),
            OnboardingImage(imgUrl: "assets/onboarding_image_3.png"),
            LabTest(),
            BehaviourConsultation(),
            OnboardingImage(imgUrl: "assets/onboarding_image_4.png"),
            OnboardingImage(imgUrl: "assets/onboarding_image_5.png"),
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
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: 'Orders',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.shopping_bag),
              //   label: 'Cart',
              // ),
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
            backgroundColor:
                Colors.transparent, // Ensure background is transparent
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
