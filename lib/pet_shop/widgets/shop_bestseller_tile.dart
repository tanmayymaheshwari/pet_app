import 'package:flutter/material.dart';

class ShopBestsellerTile extends StatelessWidget {
  final String imgUrl;
  final String itemName;
  final String itemDescription;
  final int price;
  final double rating;
  final int reviewCount;

  const ShopBestsellerTile({
    super.key,
    required this.imgUrl,
    required this.itemName,
    required this.itemDescription,
    required this.price,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  // Item Photo
                  Image.asset(imgUrl, fit: BoxFit.cover),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Item Name
                      Text(
                        itemName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Item Description
                      Text(
                        itemDescription,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),

                      const SizedBox(height: 8),
                      Row(
                        children: [
                          // Rating
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            "$rating/5",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                          ),
                          // Reviews
                          Text(
                            " ($reviewCount)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Price

                      // BUG: MainAxisAlignment not working here too
                      Row(
                        children: [
                          Text(
                            "\$$price",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(237, 109, 78, 1),
                            ),
                          ),
                          const SizedBox(width: 90),
                          ElevatedButton(
                            onPressed: () {}, // add functionality
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(
                                  color: Color.fromRGBO(237, 109, 78, 1),
                                  width: 1,
                                ),
                              ),
                              // onSurface: Colors.transparent
                            ),
                            child: const Center(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    color: Color.fromRGBO(237, 109, 78, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromRGBO(255, 248, 247, 1),
          child: const SizedBox(
            height: 8,
            child: Center(), // to display the color
          ),
        ),
      ],
    );
  }
}
