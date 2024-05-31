import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';
import 'package:pet_app/onboarding/widgets/doctor_tile.dart';

class HomeConsultation extends StatefulWidget {
  const HomeConsultation({super.key});

  @override
  State<HomeConsultation> createState() => _HomeConsultationState();
}

class _HomeConsultationState extends State<HomeConsultation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ConsultationHeader(
          title: "We Provide At Home Consultation",
          subtitle: "Get 10% Offer on your First Consultation",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DoctorTile(),
              DoctorTile(),
              DoctorTile(),
              DoctorTile(),
            ],
          ),
        )
      ],
    );
  }
}
