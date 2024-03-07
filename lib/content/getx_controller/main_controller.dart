import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/getx_controller/my_controller.dart';

void main() {
  runApp(MainController());
}

// ignore: must_be_immutable
class MainController extends StatelessWidget {
  MainController({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Controller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Controller'),
          backgroundColor: Colors.cyan,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    'Name is ${myController.student1.value.name} and ${myController.student1.value.age} years old',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    myController.convertUpperCase();
                  },
                  child: const Text('Upper'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
