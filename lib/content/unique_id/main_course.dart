import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/controller_id/cont_id.dart';

void main() {
  runApp(MainCourse());
}

// ignore: must_be_immutable
class MainCourse extends StatelessWidget {
  MainCourse({super.key});

  MainCourseController mainCourseController = Get.put(MainCourseController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Main Course ID',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          //    brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Getx ID'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MainCourseController>(
                id: 'txtCount',
                builder: (controller) => Text(
                  'The ID value is ${controller.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              GetBuilder<MainCourseController>(
                builder: (controller) => Text(
                  'The none ID value is ${controller.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
                onPressed: () {
                  mainCourseController.increment();
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
