import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
        backgroundColor: Colors.tealAccent,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is next screen',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
