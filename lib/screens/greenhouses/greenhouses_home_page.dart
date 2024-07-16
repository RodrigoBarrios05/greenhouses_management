import 'package:flutter/material.dart';
import 'package:greenhouses_management/screens/greenhouses/greenhouse_list_widget.dart';
import 'package:greenhouses_management/utils/seed.dart';

class GreenhousesHomePage extends StatelessWidget {
  const GreenhousesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greenhouses Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GreenhouseListWidget(greenhouses: exampleGreenhouses),
            ),
          ],
        ),
      ),
    );
  }
}
