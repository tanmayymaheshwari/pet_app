import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';
import 'package:pet_app/onboarding/widgets/grooming_tile.dart';

class GroomingPackage extends StatefulWidget {
  const GroomingPackage({Key? key}) : super(key: key);

  @override
  State<GroomingPackage> createState() => _GroomingPackageState();
}

class _GroomingPackageState extends State<GroomingPackage> {
  // List of grooming packages with their details
  final List<Map<String, dynamic>> groomingPackages = [
    {
      'serviceName': 'Spa Service',
      'discount': 5,
      'rating': 4.5,
      'reviews': 20,
      'duration': '1hr 45mins',
      'price': 1120,
    },
    {
      'serviceName': 'Shampoo Service',
      'discount': 8,
      'rating': 4.2,
      'reviews': 28,
      'duration': '1hr 15mins',
      'price': 1080,
    },
    {
      'serviceName': 'Spa Service',
      'discount': 5,
      'rating': 4.5,
      'reviews': 20,
      'duration': '1hr 45mins',
      'price': 1120,
    },
    {
      'serviceName': 'Shampoo Service',
      'discount': 8,
      'rating': 4.2,
      'reviews': 28,
      'duration': '1hr 15mins',
      'price': 1080,
    },
  ];

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
              children: List.generate(groomingPackages.length, (index) {
                final package = groomingPackages[index];
                return GroomingTile(
                  serviceName: package['serviceName'],
                  discount: package['discount'],
                  rating: package['rating'],
                  reviews: package['reviews'],
                  duration: package['duration'],
                  price: package['price'],
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
