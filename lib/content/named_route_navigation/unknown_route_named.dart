import 'package:flutter/material.dart';

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Unknown Route',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.red,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
