import 'package:flutter/material.dart';
import 'package:greenhouses_management/screens/greenhouses/greenhouse_list_widget.dart';
import 'package:greenhouses_management/utils/seed.dart';

class GreenhousesHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greenhouses Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GreenhouseListWidget(greenhouses: exampleGreenhouses),
          ],
        )
      ),
    );
  }
}