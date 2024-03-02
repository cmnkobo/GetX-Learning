import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(.2),
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
      ),
    );
  }
}
