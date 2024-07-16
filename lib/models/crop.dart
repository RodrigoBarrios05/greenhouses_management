import 'package:greenhouses_management/models/plant.dart';

enum CropStatus { planting, germination, readyToDeliver, delivered }

class Crop {
  final String id;
  final DateTime plantingDate;
  final DateTime? deliveredDate;
  final CropStatus status;
  final Plant plant;
  final int numberOfTrays;
  final int trayCapacity; 
  final String greenhouseId;


  Crop({
    required this.id,
    required this.plantingDate,
    this.deliveredDate,
    required this.status,
    required this.plant,
    required this.numberOfTrays,
    required this.trayCapacity,
    required this.greenhouseId
  });

  int getTotalPlants() {
    return numberOfTrays * trayCapacity;
  }

}
