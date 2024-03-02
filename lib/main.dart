import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/pages/confirmation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Dialog'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'Dialog Title',
                      titlePadding: const EdgeInsets.only(top: 10),
                      titleStyle: const TextStyle(
                        // fontSize: 27,
                        color: Color.fromARGB(255, 4, 45, 45),
                      ),
                      middleText: 'This is middle text of dialog',
                      middleTextStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 4, 45, 45),
                      ),
                      backgroundColor: Colors.cyan,
                      content: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Data Loading...'),
                        ],
                      ),
                      textCancel: 'Cancel',
                      onCancel: () => Get.back(),
                      textConfirm: 'Confirm',
                      onConfirm: () {
                        Get.to(const Confirmation());
                      },
                      cancel: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      confirm: ElevatedButton(
                        onPressed: () {
                          Get.to(const Confirmation());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                        ),
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Cancel-1'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Confirm-1'),
                        ),
                      ],
                      barrierDismissible: false);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                ),
                child: const Text(
                  'Show Dialog',
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 25, 25),
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
