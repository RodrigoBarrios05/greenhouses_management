import 'package:flutter/material.dart';
import 'package:greenhouses_management/models/greenhouse.dart';
import 'package:greenhouses_management/screens/crops/crop_list_widget.dart';
import 'package:greenhouses_management/screens/crops/crops_home_page.dart';

class GreenhouseWidget extends StatelessWidget {
  final Greenhouse greenhouse;

  const GreenhouseWidget({super.key, required this.greenhouse});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(greenhouse.id),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${greenhouse.name}'),
            Text('Cultivos: ${greenhouse.crops.length}'),
            Text('Estado: ${greenhouse.status}'),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CropsHomePage(greenhouseId: greenhouse.id),
            ),
          );
        },
      ),
    );
  }
}
