import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final String imgUrl;
  const OnboardingImage({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Image.asset(
          imgUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
