import 'package:flutter/material.dart';

class ProductSpacer extends StatelessWidget {
  const ProductSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 248, 247, 1),
      child: const SizedBox(
        height: 8,
        child: Center(), // to display the color
      ),
    );
  }
}
