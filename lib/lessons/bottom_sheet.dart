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
      title: 'Bottom Sheet and Dynamic theme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Sheet'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text('Light Theme'),
                            onTap: () => {
                              Get.changeTheme(ThemeData.light()),
                              Get.back(),
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text('Dark Theme'),
                            onTap: () => {
                              Get.changeTheme(ThemeData.dark()),
                              Get.back(),
                            },
                          )
                        ],
                      ),
                    ),
                    barrierColor: Colors.cyan,
                    backgroundColor: Colors.teal,
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                    ),
                    enableDrag: true,
                  );
                },
                child: const Text('Botton Sheet'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
