import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/internationalization/intl_controller.dart';
import 'package:gettxx/content/internationalization/messages.dart';

void main() {
  runApp(InternationalizationMain());
}

// ignore: must_be_immutable
class InternationalizationMain extends StatelessWidget {
  InternationalizationMain({super.key});

  IntlController intlController = Get.put(IntlController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),

      locale: Get.deviceLocale,
      //locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: 'Flutter Internationalization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter Internationalization')),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.teal,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  intlController.changeLanguage('hi', 'IN');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Hindi'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  intlController.changeLanguage('en', 'US');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: const Text('English'),
              ),
              const SizedBox(
                height: 11,
              ),
              ElevatedButton(
                onPressed: () {
                  intlController.changeLanguage('fr', 'FR');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Hindi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
