import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Show Dialog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Show Dialog'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: ('Dialog Title'),
                    titleStyle: const TextStyle(
                      color: Colors.teal,
                      fontSize: 25,
                    ),
                    middleText: 'This is middle text',
                    middleTextStyle: TextStyle(
                      color: Colors.teal[400],
                      fontSize: 23,
                    ),
                    backgroundColor: Colors.pink[100],
                    radius: 30,
                    content: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Data is Loading...'),
                      ],
                    ),
                    textCancel: 'Cancel',
                    cancelTextColor: Colors.white,
                    textConfirm: 'Confirm',
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},

                    // cancel: const Text(
                    //   'Cancel',
                    //   style: TextStyle(
                    //     color: Colors.red,
                    //   ),
                    // ),
                    // confirm: const Text(
                    //   'Confirm',
                    //   style: TextStyle(
                    //     color: Colors.blueAccent,
                    //   ),
                    // ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[200],
                        ),
                        child: const Text('Cancel-2'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //Code what confirm button should do
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[700],
                        ),
                        child: const Text('Confirm-2'),
                      ),
                    ],
                    barrierDismissible: false,
                  );
                },
                child: const Text('Show Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
