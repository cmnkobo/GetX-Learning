import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:gettxx/content/binding/all_cont_binding.dart';
import 'package:gettxx/content/binding/bind_controller.dart';
import 'package:gettxx/content/binding/bind_controller_binding.dart';
import 'package:gettxx/content/binding/home_binding.dart';
// import 'package:gettxx/content/binding/home_controller.dart';
import 'package:gettxx/content/binding/home_controller_binding.dart';

void main() {
  BindControllerBinding().dependencies();
  runApp(const MainBinding());
}

class MainBinding extends StatelessWidget {
  const MainBinding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: AllControllerBinding(),
      title: 'binding',
      // Binding at Route level
      getPages: [
        GetPage(
            name: '/home',
            page: () => const HomeBinding(),
            binding: HomeControllerBinding()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter Binding')),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${Get.find<BindController>().count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<BindController>().increment();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Increment'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                      //  const HomeBinding(),
                      Get.toNamed('/home'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
