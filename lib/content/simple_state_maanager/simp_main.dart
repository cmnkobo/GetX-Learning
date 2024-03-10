import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/simple_state_maanager/control_x.dart';

void main() {
  runApp(const SimpStateEntry());
}

class SimpStateEntry extends StatelessWidget {
  const SimpStateEntry({super.key});

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
          title: const Text('State Managenment'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder(
                init: SimpStateClass(),
                builder: (controller) => Text(
                  'The value is ${controller.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<SimpStateClass>().incrementCount();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Increment'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
