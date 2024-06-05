import 'package:flutter/material.dart';

class TreatmentDoctorTile extends StatelessWidget {
  final String docImgPath;
  final String docName;
  final int experience;
  final double rating;
  final int review;
  final double distance;

  const TreatmentDoctorTile({
    super.key,
    required this.docImgPath,
    required this.docName,
    required this.experience,
    required this.rating,
    required this.review,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 10, top: 4),
          child: Container(
            width: 340,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Doctor Photo
                      Image.asset(docImgPath, fit: BoxFit.cover),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                docName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              // BUG : Exapnded is not working as intended
                              // Expanded(child: Container()),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "View",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(237, 109, 78, 1),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // const SizedBox(height: 4),

                          // Experience
                          Text(
                            "$experience Years Experience",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              // Rating
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

                              // Reviews
                              const Icon(
                                Icons.circle,
                                color: Color.fromRGBO(237, 109, 78, 1),
                                size: 12,
                              ),
                              Text(
                                " $review Reviews",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                ),
                              ),
                              const SizedBox(width: 12),

                              // Distance
                              const Icon(
                                Icons.location_pin,
                                color: Color.fromRGBO(237, 109, 78, 1),
                                size: 14,
                              ),
                              Text(
                                " $distance km",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
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
            height: 6,
            child: Center(), // to display the color
          ),
        ),
      ],
    );
  }
}
