import 'package:flutter/material.dart';

class RegistrationPetInfo extends StatefulWidget {
  final int petTypeIndex;
  const RegistrationPetInfo({super.key, required this.petTypeIndex});

  @override
  State<RegistrationPetInfo> createState() => _RegistrationPetInfoState();
}

class _RegistrationPetInfoState extends State<RegistrationPetInfo> {
  late String petType;

  @override
  void initState() {
    super.initState();
    if (widget.petTypeIndex == 1) {
      petType = "Dog";
    } else if (widget.petTypeIndex == 2) {
      petType = "Cat";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Selected Pet : ${petType}")),
    );
  }
}
