import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyBottomSheet());
}

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom Sheet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Sheet'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                    barrierColor: const Color.fromARGB(255, 25, 235, 172),
                    backgroundColor: Colors.cyanAccent,
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    //        enableDrag: false,
                  );
                },
                child: const Text(
                  'Bottom Sheet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
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
