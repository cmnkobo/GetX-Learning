import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNamedRoute extends StatelessWidget {
  const HomeNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is Home Screen',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
              ),
              onPressed: () {
                Get.toNamed('/nextScreen');
              },
              child: const Text('Next Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
              ),
              onPressed: () {
                Get.back();
              },
              child: const Text('Back to Main'),
            ),
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   Get.arguments,
            //   style: Theme.of(context).textTheme.headlineMedium,
            // )
          ],
        ),
      ),
    );
  }
}
