import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/state_management/simple/simple_class.dart';

void main() {
  runApp(SimpleMain());
}

// ignore: must_be_immutable
class SimpleMain extends StatelessWidget {
  SimpleMain({super.key});

  var student = StudentDetails();
  void studentUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State MAnagement',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
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
              Obx(
                () => Text(
                  'Name is ${student.name.value} and ${student.age.value} years old',
                  style: Theme.of(context).textTheme.headlineMedium,
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
                  studentUpperCase();
                },
                child: const Text(
                  'Uppercase',
                  style: TextStyle(
                    fontSize: 18,
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
