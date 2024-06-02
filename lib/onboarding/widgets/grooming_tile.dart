import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/rect_button.dart';

class GroomingTile extends StatefulWidget {
  const GroomingTile({super.key});

  @override
  State<GroomingTile> createState() => _GroomingTileState();
}

class _GroomingTileState extends State<GroomingTile> {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Spa Service", // Variable doc name
                            style: TextStyle(
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
                      Text(
                        "Get 5% Instant off on this package",
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
                            Icons.circle,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            " 20 Reviews", // Variable reviews
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.access_time_filled_rounded,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            " 1 hr 45 mins", // Variable time
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
              // SizedBox(height: 10),
              // Divider(
              //   color: const Color.fromARGB(255, 240, 98, 98),
              //   thickness: 20,
              //   height: 90,
              // ),
              Text(
                "____________________________________________",
                style: TextStyle(color: Colors.grey[200]),
              ),
              SizedBox(height: 10),

              // modify when rendering through a list
              Row( 
                children: [
                  Text(" Body Spray |", style: TextStyle(color: Colors.grey[700],fontSize: 12 ),),
                  Text(" Medicated Bath |", style: TextStyle(color: Colors.grey[700],fontSize: 12 ),),
                  Text(" Teeth Brushing ", style: TextStyle(color: Colors.grey[700],fontSize: 12 ),),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$1120", //variable price
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(237, 109, 78, 1),
                    ),
                  ),
                  const SizedBox(
                      width: 100), // spacebetween is not working. no clue why
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
