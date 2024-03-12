import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/controller_life_cycle/con_life_cycle.dart';

void main() {
  runApp(LifeCycleMain());
}

// ignore: must_be_immutable
class LifeCycleMain extends StatelessWidget {
  LifeCycleMain({super.key});

  LifeCycleController lifecontroller = Get.put(LifeCycleController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Life Cycle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Controller Life Cycle'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<LifeCycleController>(
                initState: (state) => lifecontroller.count,
                dispose: (_) => lifecontroller.cleanUpTask(),
                builder: (controller) => Text(
                  'The value is ${lifecontroller.count}',
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
