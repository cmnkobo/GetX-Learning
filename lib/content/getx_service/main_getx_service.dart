import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/getx_service/service.dart';

Future<void> main() async {
  await initServices();
  runApp(const ServiceMain());
}

Future<void> initServices() async {
  print('Starting services....');
  await Get.putAsync<Service>(() async => Service());
  print('All services started.');
}

class ServiceMain extends StatelessWidget {
  const ServiceMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Service',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Service'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
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
