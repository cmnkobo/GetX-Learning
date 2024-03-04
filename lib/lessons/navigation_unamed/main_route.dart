import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/lessons/navigation_unamed/home.dart';

void main() {
  runApp(const MainRoute());
}

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Navigation'),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                ),
                onPressed: () async {
                  var data = await Get.to(
                    () => const HomeRoute(),
                    //  arguments: 'Data from Main',
                    fullscreenDialog: true,
                    transition: Transition.downToUp,
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    curve: Curves.bounceInOut,
                    //go to main screen but no option to return to0 previous screen
                    //Get.off ( HomeRoute());
                  );
                  print(' The Received data is $data');
                },
                child: const Text(
                  'Go to Home',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
