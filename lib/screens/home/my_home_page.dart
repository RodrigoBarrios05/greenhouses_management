import 'package:flutter/material.dart';
import 'package:greenhouses_management/screens/greenhouses/greenhouse_list_widget.dart';
import 'package:greenhouses_management/utils/seed.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded( // Agregado aquí
              child: GreenhouseListWidget(greenhouses: exampleGreenhouses),
            ),
          ],
        ),
      ),
    );
  }
}