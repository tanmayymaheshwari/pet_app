import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';

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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [],
          ),
        )
      ],
    );
  }
}
