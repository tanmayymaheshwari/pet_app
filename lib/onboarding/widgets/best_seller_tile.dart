import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BestSellerTile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final double price;
  const BestSellerTile(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 135,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
            child: SizedBox(
              width: 80,
              height: 100,
              child: Image.asset(imgUrl, fit: BoxFit.cover),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      name, // product name
                      style: const TextStyle(fontWeight: FontWeight.w400),
                      minFontSize: 10,
                      maxFontSize: 12,
                      maxLines: 2,
                    ),
                    Text(
                      "\$${price}", // product price
                      style: const TextStyle(
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
