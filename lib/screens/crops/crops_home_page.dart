import 'package:flutter/material.dart';
import 'package:greenhouses_management/models/crop.dart';
import 'package:greenhouses_management/screens/crops/crop_list_widget.dart';
import 'package:greenhouses_management/utils/seed.dart';

class CropsHomePage extends StatefulWidget {
  final String? greenhouseId;

  const CropsHomePage({Key? key, this.greenhouseId}) : super(key: key);

  @override
  State<CropsHomePage> createState() => _CropsHomePageState();
}

class _CropsHomePageState extends State<CropsHomePage> {
  late List<Crop> crops;

  @override
  void initState() {
    super.initState();
    _initializeCrops();
  }

  void _initializeCrops() {
    if (widget.greenhouseId != null) {
      crops = getCropsByGreenhouseId(exampleGreenhouses, widget.greenhouseId!);
    } else {
      crops = getAllCrops(exampleGreenhouses);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crops Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CropListWidget(crops: crops),
            ),
          ],
        ),
      ),
    );
  }
}
