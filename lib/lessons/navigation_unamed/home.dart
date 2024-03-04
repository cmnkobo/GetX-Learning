import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

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
              onPressed: () {},
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
                Get.back(
                  result: 'This is from data page',
                );
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
