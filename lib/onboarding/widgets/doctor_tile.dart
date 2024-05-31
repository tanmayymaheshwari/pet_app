import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/rect_button.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(12), // Adding padding inside the Card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/doctor.jpg",
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dr. Shruti Kedia", // Variable doc name
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 25),
                          GestureDetector(
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              color: Color.fromRGBO(237, 109, 78, 1),
                            ),
                            onTap: () {}, // add functionality
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Pet101 Clinic, Hyderabad", // Variable clinic name
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(237, 109, 78, 1),
                        ),
                      ),
                      Text(
                        "X Years Experience", // Variable experience
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            "4.5", // Variable rating
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            "20 Patient Stories", // Variable patient number
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Next Available",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(237, 109, 78, 1),
                        ),
                      ),
                      Text(
                        "10:00 AM tomorrow", // variable time
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  RectButton(
                    RectButtonText: "Book Now",
                    onPressed: () {},
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
