import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/service_tile.dart';

class SelectAService extends StatelessWidget {
  const SelectAService({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14.0,top: 14, bottom: 8),
          child: Text(
            "Select a Service",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(child: ServiceTile(name:"Grooming", imgUrl:"assets/grooming_icon.png",)),
            Expanded(child: ServiceTile(name:"Pet Shop", imgUrl:"assets/pet_shop_icon.png",)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: ServiceTile(name:"Treatment", imgUrl:"assets/treatment_icon.png",)),
            Expanded(child: ServiceTile(name:"Lab Test", imgUrl:"assets/lab_test_icon.png",)),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
