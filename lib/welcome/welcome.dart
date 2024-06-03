import 'package:flutter/material.dart';
import 'package:pet_app/login/login.dart';
import 'package:pet_app/global_widgets/round_button.dart';
import 'package:pet_app/welcome/widgets/pet_selection_bottomsheet.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  void _guestLogin() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const PetSelectionBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        // STACK to add background image
        child: Stack(
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
                                  builder: (context) => const Login(),
                                ));
                          },
                        ),
                        const SizedBox(
                          height: 50,
                        ),

                        // Guest Explore
                        TextButton(
                          onPressed: _guestLogin, // add functionality
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
      ),
    );
  }
}
