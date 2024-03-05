import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MainReactive());
}

// ignore: must_be_immutable
class MainReactive extends StatelessWidget {
  MainReactive({super.key});

  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Management'),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Your count value is $count',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
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
