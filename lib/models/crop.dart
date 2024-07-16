import 'package:greenhouses_management/models/plant.dart';
import 'package:greenhouses_management/models/tray.dart';

enum CropStatus { planting, germination, readyToDeliver, delivered }

class Crop {
  final String id;
  final DateTime plantingDate;
  final DateTime? deliveredDate;
  final CropStatus status;
  final Plant plant;
  final String greenhouseId;
  final List<Tray> trays; 

  Crop({
    required this.id,
    required this.plantingDate,
    this.deliveredDate,
    required this.status,
    required this.plant,
    required this.greenhouseId,
    required this.trays,
  });

  int getTotalPlants() {
    return trays
        .where((tray) => tray.status == TrayStatus.inUse && tray.cropId == id)
        .fold(0, (sum, tray) => sum + tray.capacity);
  }
}
