import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:pet_app/onboarding/views/service_tile.dart';

class SelectAService extends StatelessWidget {
  final Callback onLabTestTap;
  final Callback onTreatmentTap;
  const SelectAService(
      {super.key, required this.onLabTestTap, required this.onTreatmentTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 14, bottom: 8),
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
            Expanded(
                child: ServiceTile(
              name: "Grooming",
              imgUrl: "assets/grooming_icon.png",
              onTileTap: () {},
            )),
            Expanded(
                child: ServiceTile(
              name: "Pet Shop",
              imgUrl: "assets/pet_shop_icon.png",
              onTileTap: () {},
            )),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: ServiceTile(
              name: "Treatment",
              imgUrl: "assets/treatment_icon.png",
              onTileTap: onTreatmentTap,
            )),
            Expanded(
                child: ServiceTile(
              name: "Lab Test",
              imgUrl: "assets/lab_test_icon.png",
              onTileTap: onLabTestTap,
            )),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
