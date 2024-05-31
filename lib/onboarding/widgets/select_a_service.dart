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
            Expanded(child: ServiceTile()),
            Expanded(child: ServiceTile()),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: ServiceTile()),
            Expanded(child: ServiceTile()),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
