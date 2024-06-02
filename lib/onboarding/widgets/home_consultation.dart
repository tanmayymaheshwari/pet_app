import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';
import 'package:pet_app/onboarding/widgets/doctor_tile.dart';

class HomeConsultation extends StatefulWidget {
  const HomeConsultation({super.key});

  @override
  State<HomeConsultation> createState() => _HomeConsultationState();
}

class _HomeConsultationState extends State<HomeConsultation> {
  final List<Map<String, dynamic>> doctors = [
    {
      'imgUrl': "assets/doctor.jpg",
      'doctorName': 'Dr. Shruti Kedia',
      'clinicName': 'Pet101 Clinic, Hyderabad',
      'experience': 5,
      'rating': 4.5,
      'patientCount': 20,
      'availableTime': '10:00 AM tomorrow',
    },
    {
      'imgUrl': "assets/doctor.jpg",
      'doctorName': 'Dr. Rakesh Singh',
      'clinicName': 'Paws and Claws Veterinary Clinic',
      'experience': 8,
      'rating': 4.7,
      'patientCount': 15,
      'availableTime': '7:30 PM tomorrow',
    },
    {
      'imgUrl': "assets/doctor.jpg",
      'doctorName': 'Dr. Priya Patel',
      'clinicName': 'Pet Care Hospital',
      'experience': 6,
      'rating': 4.6,
      'patientCount': 18,
      'availableTime': '9:00 AM tomorrow',
    },
    {
      'imgUrl': "assets/doctor.jpg",
      'doctorName': 'Dr. Anil Gupta',
      'clinicName': 'Animal Health Clinic',
      'experience': 10,
      'rating': 4.9,
      'patientCount': 25,
      'availableTime': '12:00 PM tomorrow',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "We Provide At Home Consultation",
          subtitle: "Get 10% Offer on your First Consultation",
          onPressed: () {}, // add functionality
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 4),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(doctors.length, (index) {
                final doctor = doctors[index];
                return DoctorTile(
                  imgUrl: doctor['imgUrl']!,
                  doctorName: doctor['doctorName']!,
                  clinicName: doctor['clinicName']!,
                  experience: doctor['experience']!,
                  rating: doctor['rating']!,
                  patientCount: doctor['patientCount']!,
                  availableTime: doctor['availableTime']!,
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
