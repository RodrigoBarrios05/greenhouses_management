import 'package:greenhouses_management/models/crop.dart';

enum GreenhouseStatus { active, inactive, underMaintenance }

class Greenhouse {
  final String id;
  final String name;
  final GreenhouseStatus status;
  final List<Crop> crops;

  Greenhouse({required this.id, required this.name, required this.status, required this.crops});
}