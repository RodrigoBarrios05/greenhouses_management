import 'package:greenhouses_management/models/crop.dart';
import 'package:greenhouses_management/models/greenhouse.dart';
import 'package:greenhouses_management/models/plant.dart';

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
        greenhouseId: 'gh1', numberOfTrays: 200, trayCapacity: 200,
      ),
    ],
    traysCapacity: 2000,
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
        greenhouseId: 'gh2', numberOfTrays: 200, trayCapacity: 200,
      ),
    ],
    traysCapacity: 2000,
  ),
  Greenhouse(
    id: 'gh3',
    name: 'Greenhouse 3',
    status: GreenhouseStatus.active,
    crops: [
      Crop(
        id: 'crop3',
        plantingDate: DateTime(2023, 3, 10),
        deliveredDate: null,
        status: CropStatus.germination,
        plant: Plant(
          id: 'plant3',
          name: 'Cucumber',
          variety: 'English',
          description: 'Long and seedless cucumbers',
          brand: 'VeggieFresh',
          imageUrl: 'https://example.com/cucumber.jpg',
        ),
        greenhouseId: 'gh3', numberOfTrays: 200, trayCapacity: 200,
      ),
    ],
    traysCapacity: 2000,
  ),
  Greenhouse(
    id: 'gh4',
    name: 'Greenhouse 4',
    status: GreenhouseStatus.active,
    crops: [
      Crop(
        id: 'crop4',
        plantingDate: DateTime(2023, 4, 5),
        deliveredDate: null,
        status: CropStatus.delivered,
        plant: Plant(
          id: 'plant4',
          name: 'Bell Pepper',
          variety: 'Red',
          description: 'Sweet and crunchy bell peppers',
          brand: 'Peppery',
          imageUrl: 'https://example.com/bell_pepper.jpg',
        ),
        greenhouseId: 'gh4', numberOfTrays: 200, trayCapacity: 200,
      ),
    ],
    traysCapacity: 2000,
  ),
  Greenhouse(
    id: 'gh5',
    name: 'Greenhouse 5',
    status: GreenhouseStatus.underMaintenance,
    crops: [
      Crop(
        id: 'crop5',
        plantingDate: DateTime(2023, 5, 20),
        deliveredDate: null,
        status: CropStatus.planting,
        plant: Plant(
          id: 'plant5',
          name: 'Spinach',
          variety: 'Baby',
          description: 'Tender baby spinach leaves',
          brand: 'LeafyDelight',
          imageUrl: 'https://example.com/spinach.jpg',
        ),
        greenhouseId: 'gh5', numberOfTrays: 200, trayCapacity: 200,
      ),
    ],
    traysCapacity: 2000,
  ),
];
List<Crop> getAllCrops(List<Greenhouse> greenhouses) {
  List<Crop> allCrops = [];
  for (Greenhouse greenhouse in greenhouses) {
    allCrops.addAll(greenhouse.crops);
  }
  return allCrops;
}
List<Crop> getCropsByGreenhouseId(List<Greenhouse> greenhouses, String greenhouseId) {
  List<Crop> crops = [];
  for (Greenhouse greenhouse in greenhouses) {
    if (greenhouse.id == greenhouseId) {
      crops.addAll(greenhouse.crops);
    }
  }
  return crops;
}