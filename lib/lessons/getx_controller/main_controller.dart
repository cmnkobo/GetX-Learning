import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/lessons/getx_controller/my_controller.dart';

void main() {
  runApp(GetxMainController());
}

// ignore: must_be_immutable
class GetxMainController extends StatelessWidget {
  GetxMainController({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Controller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Controller'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Name is ${myController.student1.value.name} and ${myController.student1.value.age} years',
                  style: Theme.of(context).textTheme.headlineMedium,
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
                  myController.studentUpper();
                },
                child: const Text('Upper'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
