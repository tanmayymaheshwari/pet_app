import 'package:flutter/material.dart';

class Pet {
  final String animal;
  final String imgUrl;

  Pet({required this.animal, required this.imgUrl});
}

class PetSelector extends StatefulWidget {
  final List<Pet> pets;
  const PetSelector({super.key, required this.pets});

  @override
  State<PetSelector> createState() => _PetSelectorState();
}

class _PetSelectorState extends State<PetSelector> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.pets.length,
      itemBuilder: (context, index) {
        Pet pet = widget.pets[index];
        bool isSelected = index == selectedIndex;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 239, 230, 1),
                border: Border.all(
                  color: isSelected
                      ? Color.fromRGBO(237, 109, 78, 1)
                      : Colors.transparent,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(pet.imgUrl),
                const SizedBox(
                  width: 10,
                ),
                Text(pet.animal),
              ],
            ),
          ),
        );
      },
    );
  }
}
