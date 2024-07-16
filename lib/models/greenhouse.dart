import 'package:greenhouses_management/models/crop.dart';

enum GreenhouseStatus { active, inactive, underMaintenance }

class Greenhouse {
  final String id;
  final String name;
  final int traysCapacity;
  final GreenhouseStatus status;
  final List<Crop> crops;

  Greenhouse({required this.id, required this.name, required this.traysCapacity, required this.status, required this.crops});

}