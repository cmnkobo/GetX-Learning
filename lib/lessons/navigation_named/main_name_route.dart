import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/lessons/navigation_named/home_named_route.dart';
import 'package:getxx/lessons/navigation_named/nextscreen_named.dart';

void main() {
  runApp(const MainNamedRoute());
}

class MainNamedRoute extends StatelessWidget {
  const MainNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Navigation Name Route',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.tealAccent,
        ),
      ),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => const MainNamedRoute()),
        GetPage(name: '/home', page: () => const HomeNamedRoute()),
        GetPage(
          name: '/nextScreen',
          page: () => const NextScreen(),
          transition: Transition.leftToRight,
        )
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Named Route'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                ),
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const Text('Go to Home'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
