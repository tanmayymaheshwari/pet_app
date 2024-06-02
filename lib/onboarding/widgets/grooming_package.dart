import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';
import 'package:pet_app/onboarding/widgets/grooming_tile.dart';

class GroomingPackage extends StatefulWidget {
  const GroomingPackage({super.key});

  @override
  State<GroomingPackage> createState() => _GroomingPackageState();
}

class _GroomingPackageState extends State<GroomingPackage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Popular Grooming Package",
          subtitle: "Get up to 15% off on your first grooming",
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GroomingTile(),
                GroomingTile(),
                GroomingTile(),
                GroomingTile(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
