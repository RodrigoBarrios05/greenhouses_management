import 'package:flutter/material.dart';
import 'package:greenhouses_management/models/greenhouse.dart';

class GreenhouseWidget extends StatelessWidget {
  final Greenhouse greenhouse;

  const GreenhouseWidget({super.key, required this.greenhouse});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greenhouse.name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
