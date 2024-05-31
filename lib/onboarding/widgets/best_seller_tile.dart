import 'package:flutter/material.dart';

class BestSellerTile extends StatelessWidget {
  const BestSellerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0,
              offset: Offset(0, -1), // Shadow position
            ),
          ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 4),
            child: Image.asset("assets/best_seller.png"), // variable
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "RC Kitten", // variable
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "\$20,99", // variable
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {}, // add functionalith

                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.all(0),
                  shadowColor: Colors.transparent,
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(237, 109, 78, 1),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              )

              // Button
            ],
          ),
        ],
      ),
    );
  }
}
