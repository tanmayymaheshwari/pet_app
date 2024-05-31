import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_app/onboarding/widgets/best_seller_tile.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Seller",
                style: TextStyle(
                  color: Color.fromRGBO(26, 25, 25, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color.fromRGBO(237, 109, 78, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 10, bottom: 4),
          child: Row(
            children: [
              BestSellerTile(name: "RC Kitten",imgUrl : "assets/best_seller_1.png",price:20.99),
              BestSellerTile(name: "RC Kitten",imgUrl : "assets/best_seller_2.png",price:20.99),
              BestSellerTile(name: "RC Kitten",imgUrl : "assets/best_seller_1.png",price:20.99),
              BestSellerTile(name: "RC Kitten",imgUrl : "assets/best_seller_2.png",price:20.99),
            ],
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
