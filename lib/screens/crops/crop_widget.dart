import 'package:flutter/material.dart';
import 'package:greenhouses_management/models/crop.dart';

class CropWidget extends StatelessWidget {
  final Crop crop;

  const CropWidget({super.key, required this.crop});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(crop.id),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Planta: ${crop.plant}'),
            Text('Cantidad de charolas: ${crop.numberOfTrays}'),
            Text('Total de plantas: ${crop.getTotalPlants()}'),
            Text('Estado: ${crop.status}'),
            Text('Greenhouse: ${crop.greenhouseId}'),
          ],
        ),
      ),
    );
  }
}
