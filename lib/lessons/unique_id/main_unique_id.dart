import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/lessons/unique_id/unique_con.dart';

void main(List<String> args) {
  runApp(MainUniqueId());
}

// ignore: must_be_immutable
class MainUniqueId extends StatelessWidget {
  MainUniqueId({super.key});

  UniqueIdController uniqueIdController = Get.put(UniqueIdController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Unique ID',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unique ID'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<UniqueIdController>(
                id: 'txtCount',
                builder: (controller) => Text(
                  'This is ${uniqueIdController.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              GetBuilder<UniqueIdController>(
                builder: (controller) => Text(
                  'The value is ${uniqueIdController.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  uniqueIdController.increment();
                },
                child: const Text('Increment'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
