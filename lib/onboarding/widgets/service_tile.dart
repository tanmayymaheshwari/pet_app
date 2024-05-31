import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Card(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 248, 247, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: Center(
                child: Image.asset("assets/welcome_dog_icon.png"),
              ),
            ),
            Container(
              height: 30,
              width: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(252, 213, 208, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: const Center(
                child: Text(
                  "Pet Shop",
                  style: TextStyle(
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
  }
}
