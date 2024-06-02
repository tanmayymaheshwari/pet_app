import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';

class SymptomConsultation extends StatefulWidget {
  const SymptomConsultation({super.key});

  @override
  State<SymptomConsultation> createState() => _SymptomConsultationState();
}

class _SymptomConsultationState extends State<SymptomConsultation> {
  int? _selectedIndex;

  final List<String> _labels = [
    'Runny Nose',
    'Sneezes',
    'Screeching',
    'Fever',
    'Watery Eyes',
    'Lethargy',
    'Vomiting',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Consultation Based on Symptoms",
          subtitle:
              "Get up to 15% off on your first Consultation\nBased on Conditions",
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(_labels.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_selectedIndex == index) {
                      _selectedIndex = null;
                    } else {
                      _selectedIndex = index;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == index
                        ? Color.fromRGBO(237, 109, 78, 1)
                        : Color.fromRGBO(255, 239, 230, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    _labels[index],
                    style: TextStyle(
                      color:
                          _selectedIndex == index ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
