import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/lessons/state_management/simple/student.dart';

void main() {
  runApp(SimpleMain());
}

// ignore: must_be_immutable
class SimpleMain extends StatelessWidget {
  SimpleMain({super.key});
  var student = Student();
  void studentNameValue() {
    student.name.value = student.name.value.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
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
                  'Name is ${student.name.value} and ${student.age.value}',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.cyan,
                      ),
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
                  studentNameValue();
                },
                child: const Text('Uppercase'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
