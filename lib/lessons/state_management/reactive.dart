import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(ReactiveMain());
}

// ignore: must_be_immutable
class ReactiveMain extends StatelessWidget {
  ReactiveMain({super.key});

  var count = 1.obs;
  void increment() {
    count + 1;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ' Navigation Reactive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'You have clicked the number of times: $count',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  increment();
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
