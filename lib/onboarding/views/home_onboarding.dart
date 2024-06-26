import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/behaviour_consultation.dart';
import 'package:pet_app/onboarding/views/best_seller.dart';
import 'package:pet_app/onboarding/views/condition_consultation.dart';
import 'package:pet_app/onboarding/views/grooming_package.dart';
import 'package:pet_app/onboarding/views/home_consultation.dart';
import 'package:pet_app/onboarding/views/lab_test.dart';
import 'package:pet_app/global_widgets/display_image.dart';
import 'package:pet_app/global_widgets/searchbar.dart';
import 'package:pet_app/onboarding/views/select_a_service.dart';
import 'package:pet_app/onboarding/views/symptom_consultation.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  String fullAddress =
      "24, Indra Nagar, Gachibowli Circle, Hyderabad, Telangana, India";
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
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Home', // add variable
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                    const SizedBox(width: 2),
                    const SizedBox(
                      width: 140,
                      child: AutoSizeText(
                        '24, Indra Nagar, Gacchibowli Circle', //add variable
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        maxFontSize: 12,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      color: Colors.grey[700],
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.arrow_drop_down),
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
                  color: const Color.fromARGB(255, 242, 98, 98),
                  width: 2.0,
                ),
              ),
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/welcome_dog_icon.png'), // variable image
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DisplayImage(imgUrl: "assets/onboarding_image_1.png"),
            // supposed to be an ad?
            PetSearchbar(searchbarHintText: 'Search for toys, grooming ...'),
            SelectAService(),
            BestSeller(),
            HomeConsultation(),

            const DisplayImage(imgUrl: "assets/onboarding_image_2.png"),
            ConditionConsultation(),
            GroomingPackage(),
            SymptomConsultation(),
            const DisplayImage(imgUrl: "assets/onboarding_image_3.png"),
            LabTest(),

            BehaviourConsultation(),
            const DisplayImage(imgUrl: "assets/onboarding_image_4.png"),
            const DisplayImage(imgUrl: "assets/onboarding_image_5.png"),
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
              offset: Offset(0, -1),
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
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: 'Orders',
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.shopping_bag),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
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
