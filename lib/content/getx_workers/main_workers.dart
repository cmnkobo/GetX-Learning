import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/getx_workers/workers_controller.dart';

void main() {
  runApp(MainWorkers());
}

// ignore: must_be_immutable
class MainWorkers extends StatelessWidget {
  MainWorkers({super.key});

  WorkersController workersController = Get.put(WorkersController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Workers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Getx Workers')),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  workersController.increment();
                },
                child: const Text('Increment'),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  onChanged: (value) {
                    workersController.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
