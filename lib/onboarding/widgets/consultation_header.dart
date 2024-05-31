import 'package:flutter/material.dart';

class ConsultationHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const ConsultationHeader(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color.fromRGBO(26, 25, 25, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {}, // add functionality
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
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color.fromRGBO(94, 92, 92, 1),
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
