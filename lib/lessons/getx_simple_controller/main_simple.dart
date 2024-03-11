import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getxx/lessons/getx_simple_controller/sim_controler.dart';

void main() {
  runApp(const MainSimpleCon());
}

class MainSimpleCon extends StatelessWidget {
  const MainSimpleCon({super.key});

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
          title: const Text('State Management'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<SimpController>(
                init: SimpController(),
                builder: (controller) => Text(
                  'The value is ${controller.count}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.find<SimpController>().simpIncrement();
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
