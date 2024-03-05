import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNamedRoute extends StatelessWidget {
  const HomeNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Home Screen',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.purpleAccent,
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
                Get.toNamed('/nextScreen/1234');
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
                Get.toNamed('/x');
              },
              child: const Text('Main Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
