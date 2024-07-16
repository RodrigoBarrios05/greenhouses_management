import 'package:flutter/material.dart';
import 'package:greenhouses_management/models/greenhouse.dart';
import 'package:greenhouses_management/screens/greenhouses/greenhouse_widget.dart';

class GreenhouseListWidget extends StatelessWidget {
  final List<Greenhouse> greenhouses;

  const GreenhouseListWidget({super.key, required this.greenhouses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: greenhouses.length,
      itemBuilder: (context, index) {
        Greenhouse greenhouse = greenhouses[index];
        return GreenhouseWidget(greenhouse: greenhouse);
      },
    );
  }
}

