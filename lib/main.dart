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
      title: 'Snackbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.black,
          onPrimary: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    'Snackbar Title', 'This will be the Snackbar message',
                    snackPosition: SnackPosition.BOTTOM,
                    //  backgroundColor: Colors.green[200],
                    titleText: const Text('Another title'),
                    messageText: const Text(
                      'Another message',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    colorText: Colors.red,
                    backgroundColor: Colors.brown,
                    borderRadius: 30,
                    margin: const EdgeInsets.all(2.0),
                    //  maxWidth: 100,
                    animationDuration: const Duration(milliseconds: 3000),
                    backgroundGradient: const LinearGradient(colors: [
                      Colors.white,
                      Colors.blueAccent,
                    ]),
                    borderColor: Colors.grey,
                    borderWidth: 4,
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    icon: const Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                    mainButton: TextButton(
                      onPressed: () {
                        Get.snackbar(
                          "title",
                          'Checking',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.teal),
                      ),
                      child: const Text('Retry'),
                    ),
                    onTap: (snack) => print('Snackbar clicked'),
                    overlayBlur: 5,
                    //   overlayColor: Colors.teal[300],
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text(" Show Snacker"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
