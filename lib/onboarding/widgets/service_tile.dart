import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  final String name;
  final String imgUrl;

  const ServiceTile({super.key, required this.name, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth * 0.8;
        double height = width * 0.5;

        return GestureDetector(
          onTap: () {}, // add functionality
          child: Card(
            shadowColor: Colors.transparent,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.8,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 248, 247, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Image.asset(imgUrl, fit: BoxFit.cover), // Adjust fit as needed
                    ),
                  ),
                ),
                Container(
                  height: height * 0.3,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(252, 213, 208, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
