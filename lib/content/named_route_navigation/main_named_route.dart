import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/named_route_navigation/home_screen.dart';
import 'package:gettxx/content/named_route_navigation/next_screen.dart';
import 'package:gettxx/content/named_route_navigation/unknown_route_named.dart';

void main() {
  runApp(const MainNamedRoute());
}

class MainNamedRoute extends StatelessWidget {
  const MainNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Named Route Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainNamedRoute()),
        GetPage(name: '/nextScreen/:someValue', page: () => const NextScreen()),
        GetPage(
          name: '/homeScreen',
          page: () => const HomeNamedRoute(),
          transition: Transition.leftToRight,
        ),
      ],
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 1000),
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const UnknownRoute(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Named Route Navigation'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                onPressed: () {
                  Get.toNamed('/homeScreen');
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
