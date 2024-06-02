import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/widgets/consultation_header.dart';

class CommonConsultation extends StatefulWidget {
  const CommonConsultation({
    super.key,
    required this.title,
    required this.subtitle,
    required this.labels,
  });

  final String title;
  final String subtitle;
  final List<String> labels;

  @override
  State<CommonConsultation> createState() => _CommonConsultationState();
}

// Add Functionalities for Condition/Symptom/Behaviour
class _CommonConsultationState extends State<CommonConsultation> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: widget.title,
          subtitle: widget.subtitle,
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(widget.labels.length, (index) {
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
                        ? const Color.fromRGBO(237, 109, 78, 1)
                        : const Color.fromRGBO(255, 239, 230, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    widget.labels[index],
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
