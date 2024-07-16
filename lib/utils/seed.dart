import 'package:greenhouses_management/models/crop.dart';
import 'package:greenhouses_management/models/greenhouse.dart';
import 'package:greenhouses_management/models/plant.dart';
import 'package:greenhouses_management/models/tray.dart';

final List<Greenhouse> exampleGreenhouses = [
  Greenhouse(
    id: 'gh1',
    name: 'Greenhouse 1',
    status: GreenhouseStatus.active,
    crops: [
      Crop(
        id: 'crop1',
        plantingDate: DateTime(2023, 1, 1),
        deliveredDate: null,
        status: CropStatus.planting,
        plant: Plant(
          id: 'plant1',
          name: 'Tomato',
          variety: 'Cherry',
          description: 'Small and sweet tomatoes',
          brand: 'GreenFarm',
          imageUrl: 'https://example.com/tomato.jpg',
        ),
        greenhouseId: 'gh1',
        trays: [
          Tray(
            id: 1,
            type: 'Type A',
            capacity: 100,
            status: TrayStatus.inUse,
            cropId: 'crop1',
          ),
          Tray(
            id: 2,
            type: 'Type B',
            capacity: 150,
            status: TrayStatus.inUse,
            cropId: 'crop1',
          ),
        ],
      ),
    ],
  ),
  Greenhouse(
    id: 'gh2',
    name: 'Greenhouse 2',
    status: GreenhouseStatus.underMaintenance,
    crops: [
      Crop(
        id: 'crop2',
        plantingDate: DateTime(2023, 2, 15),
        deliveredDate: null,
        status: CropStatus.germination,
        plant: Plant(
          id: 'plant2',
          name: 'Lettuce',
          variety: 'Romaine',
          description: 'Crisp and refreshing lettuce',
          brand: 'LeafyGreen',
          imageUrl: 'https://example.com/lettuce.jpg',
        ),
        greenhouseId: 'gh2',
        trays: [
          Tray(
            id: 3,
            type: 'Type A',
            capacity: 200,
            status: TrayStatus.inUse,
            cropId: 'crop2',
          ),
        ],
      ),
    ],
  ),
];