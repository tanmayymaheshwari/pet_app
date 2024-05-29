import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/assets/widgets/round_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

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

                // Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // Made as a Global Button
                      const RoundButton(
                        roundButtonText: "Log In / Sign Up",
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // Guest Explore
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Explore as a Guest",
                          style: TextStyle(
                            color: Color.fromRGBO(237, 109, 78, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
