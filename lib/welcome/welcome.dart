// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pet_app/assets/widgets/round_button.dart';
import 'package:pet_app/login/login.dart';
import 'package:pet_app/registration_pet_info/registration_pet_info.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int selectedPet = 1; // 1 -> Dog and 2 -> Cat
  // default is set as 1 to prevent user from entering without any input

  void guestLogin() {
    // on guest login, no login is reqd and directly guided to pet selection
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: 400,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // BottomSheet Text
                      const Text(
                        'Select your Pet Type',
                        style: TextStyle(
                          color: Color.fromRGBO(30, 33, 68, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "You can change the selection of pet anytime from the right top corner of the home page.",
                        style: TextStyle(
                          color: Color.fromRGBO(93, 115, 126, 1),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Dog or Cat Selection
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Dog
                          GestureDetector(
                            onTap: () {
                              setModalState(() {
                                selectedPet = 1;
                              });
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 18,
                                  vertical: 10,
                                ),
                                margin: selectedPet == 1
                                    ? const EdgeInsets.all(0)
                                    : const EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color.fromRGBO(255, 239, 230, 1),
                                  border: Border.all(
                                    color: selectedPet ==
                                            1 // 1 - Dog and 2 - Cat
                                        ? const Color.fromRGBO(237, 109, 78, 1)
                                        : Colors.transparent,
                                    width: selectedPet == 1 ? 3 : 1,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/welcome_dog_icon.png",
                                    ),
                                    const SizedBox(width: 10),
                                    const Text("Dog"),
                                  ],
                                )),
                          ),

                          const SizedBox(width: 20),

                          // Cat
                          GestureDetector(
                            onTap: () {
                              setModalState(() {
                                selectedPet = 2;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 10,
                              ),
                              margin: selectedPet == 2
                                    ? const EdgeInsets.all(0)
                                    : const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromRGBO(255, 239, 230, 1),
                                border: Border.all(
                                  color: selectedPet == 2 // 1 - Dog and 2 - Cat
                                      ? const Color.fromRGBO(237, 109, 78, 1)
                                      : Colors.transparent,
                                  width: selectedPet == 2 ? 3 : 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                      "lib/assets/images/welcome_cat_icon.png"),
                                  const SizedBox(width: 10),
                                  const Text("Cat"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Add Pet Details Button
                      Center(
                        child: RoundButton(
                          roundButtonText: "+Add Pet Details",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistrationPetInfo(
                                        petTypeIndex: selectedPet)));
                          },
                        ),
                      ),
                      const SizedBox(height: 24),

                      // No, Later Button
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(255, 239, 230, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "No, later",
                                style: TextStyle(
                                  color: Color.fromRGBO(7, 8, 33, 1),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // STACK to add background image
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/welcome_pawprints.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Header Image
                Image.asset('lib/assets/images/welcome_header.png'),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      const Text(
                        "Welcome to",
                        style: TextStyle(
                          color: Color.fromARGB(255, 30, 33, 68),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      // PET SAVIOUR Gradient
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) {
                          return const LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(237, 109, 78, 1),
                              Color.fromRGBO(241, 168, 82, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          );
                        },
                        child: const Text(
                          "Pet Saviour",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // Subtext
                      const Text(
                        "Discover all your pet's needs in one place! Our app connects pet owners with a range of essential services for their furry companions.",
                        style: TextStyle(
                          color: Color.fromRGBO(93, 115, 126, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),

                // Login Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // Made as a Global Button
                      RoundButton(
                        roundButtonText: "Log In / Sign Up",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      // Guest Explore
                      GestureDetector(
                        onTap: guestLogin,
                        child: const Text(
                          "Explore as a Guest",
                          style: TextStyle(
                            color: Color.fromRGBO(237, 109, 78, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
