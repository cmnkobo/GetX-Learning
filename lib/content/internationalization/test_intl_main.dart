import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettxx/content/internationalization/test_contro.dart';
import 'package:gettxx/content/internationalization/test_message.dart';

void main() {
  runApp(InterMain());
}

// ignore: must_be_immutable
class InterMain extends StatelessWidget {
  InterMain({super.key});

  InterCont interCont = Get.put(InterCont());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Msg(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en_US'),
      title: 'Internationalization in Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter Inter')),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.brown,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  interCont.langChange('in_IN', 'hello');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Hindi'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  interCont.langChange('en_US', 'hello');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                ),
                child: const Text('English'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  interCont.langChange('fr_FR', 'hello');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                ),
                child: const Text('French'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
