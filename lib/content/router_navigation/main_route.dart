import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/router_navigation/home.dart';

void main() {
  runApp(const RouteApp());
}

class RouteApp extends StatelessWidget {
  const RouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Route Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    const HomeRoute(),
                    arguments: 'Data from MainScreen, tested',
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.bounceOut,
                  );
                },
                child: const Text('Go to home'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
