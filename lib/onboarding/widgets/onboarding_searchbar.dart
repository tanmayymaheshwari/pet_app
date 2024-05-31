import 'package:flutter/material.dart';

class OnboardingSearchbar extends StatefulWidget {
  @override
  State<OnboardingSearchbar> createState() => _OnboardingSearchbarState();
}

class _OnboardingSearchbarState extends State<OnboardingSearchbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 249, 246, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color.fromRGBO(237, 109, 78, 0.2),
          )
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Color.fromRGBO(237, 109, 78, 1),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search for toys, grooming ...',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(151, 151, 151, 1), fontSize: 12),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {}, // add functionality
              icon: const Icon(
                Icons.image_outlined,
                color: Color.fromRGBO(237, 109, 78, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
