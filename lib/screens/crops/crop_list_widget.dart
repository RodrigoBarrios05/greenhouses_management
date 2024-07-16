import 'package:flutter/material.dart';
import 'package:greenhouses_management/models/crop.dart';
import 'package:greenhouses_management/screens/crops/crop_widget.dart';

class CropListWidget extends StatelessWidget {
  final List<Crop> crops;

  const CropListWidget({super.key, required this.crops});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: crops.length,
      itemBuilder: (context, index) {
        Crop crop = crops[index];
        return CropWidget(crop: crop);
      },
    );
  }
}

