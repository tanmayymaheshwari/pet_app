import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/rect_button.dart';

class GroomingTile extends StatelessWidget {
  final String serviceName;
  final int discount;
  final double rating;
  final int reviews;
  final String duration;
  final int price;

  const GroomingTile({
    Key? key,
    required this.serviceName,
    required this.discount,
    required this.rating,
    required this.reviews,
    required this.duration,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 10, bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(

                        // BUG : SpaceBetween again not working
                        // Exapnded and Flexible cause the UI to vanish
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Service Name
                          Text(
                            serviceName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 95),
                          TextButton(
                            child: const Text(
                              "Edit Package",
                              style: TextStyle(
                                color: Color.fromRGBO(237, 109, 78, 1),
                              ),
                            ),
                            onPressed: () {}, // add functionality
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),

                      // discount offered
                      Text(
                        "Get $discount% Instant off on this package",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        // rating
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            "$rating",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(width: 12),

                          // reviews
                          const Icon(
                            Icons.circle,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            " $reviews Reviews",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(width: 12),

                          // time provided
                          const Icon(
                            Icons.access_time_filled_rounded,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            " $duration",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              // const SizedBox(height: 10),
              // BUG : DIVIDER was not displying, hence this temporarily
              Text(
                "____________________________________________",
                style: TextStyle(color: Colors.grey[200]),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    " Body Spray |",
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                  Text(
                    " Medicated Bath |",
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                  Text(
                    " Teeth Brushing ",
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Text(
                    "\$$price",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(237, 109, 78, 1),
                    ),
                  ),

                  // BUG : Same glitch in the spacebetween
                  const SizedBox(width: 110),

                  RectButton(
                    RectButtonText: "Book Now",
                    onPressed: () {}, // add functionality
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
