enum TrayStatus { empty, inUse, damaged, missing }

class Tray {
  final int id;
  final String type;
  final int capacity;
  final TrayStatus status;
  final String? cropId;

  Tray({required this.id, required this.type, required this.capacity, required this.status, this.cropId});
}