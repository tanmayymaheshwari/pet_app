import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:pet_app/pet_shop/pet_shop.dart';

class ServiceTile extends StatelessWidget {
  final String name;
  final String imgUrl;
  final Callback onTileTap;

  const ServiceTile({super.key, required this.name, required this.imgUrl, required this.onTileTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth * 0.8;
        double height = width * 0.5;

        return GestureDetector(
          onTap: () {
            if (name == "Grooming") {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const Grooming()));
            } else if (name == "Pet Shop") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PetShop()));
            } else if (name == "Treatment" || name == "Lab Test") {
              onTileTap();
            }
          }, // add functionality
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
                      child: Image.asset(imgUrl,
                          fit: BoxFit.cover), // Adjust fit as needed
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
