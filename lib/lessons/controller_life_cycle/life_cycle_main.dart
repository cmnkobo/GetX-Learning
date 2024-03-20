import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/lessons/controller_life_cycle/cont_class.dart';

void main() {
  runApp(LifeCycleMain());
}

// ignore: must_be_immutable
class LifeCycleMain extends StatelessWidget {
  LifeCycleMain({super.key});

  CycleController cycleController = Get.put(CycleController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Controller LifeCycle'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CycleController>(
                // initState: (state) => cycleController,
                // dispose: (_) => cycleController.cleanUpTask(),
                builder: (controller) => Text(
                  'The value is ${controller.count.toInt()}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
