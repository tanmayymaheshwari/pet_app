import 'package:flutter/material.dart';
import 'package:pet_app/global_widgets/Round_button.dart';
import 'package:pet_app/registration_pet_info/registration_pet_info.dart';
import 'package:pet_app/welcome/widgets/pet_selection_tile.dart';

class PetSelectionBottomsheet extends StatefulWidget {
  const PetSelectionBottomsheet({super.key});

  @override
  State<PetSelectionBottomsheet> createState() =>
      _PetSelectionBottomsheetState();
}

class _PetSelectionBottomsheetState extends State<PetSelectionBottomsheet> {
  int _selectedPet = 1;

  void _onPetSelected(int pet) {
    setState(() {
      _selectedPet = pet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  PetSelectionTile(
                    image: "lib/assets/images/welcome_dog_icon.png",
                    label: "Dog",
                    isSelected: _selectedPet == 1,
                    onTap: () => _onPetSelected(1), // add functionality
                  ),
                  PetSelectionTile(
                    image: "lib/assets/images/welcome_cat_icon.png",
                    label: "Cat",
                    isSelected: _selectedPet == 2,
                    onTap: () => _onPetSelected(2), // add functionality
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
                          petTypeIndex: _selectedPet,
                        ),
                      ),
                    );
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
                    backgroundColor: const Color.fromRGBO(255, 239, 230, 1),
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
  }
}