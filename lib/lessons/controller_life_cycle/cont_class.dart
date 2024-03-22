import 'dart:async';

import 'package:get/get.dart';

class CycleController extends GetxController {
  var count = 0;

  void cycleIncrement() async {
    await Future<int>.delayed(
      const Duration(seconds: 3),
    );
  }

  void cleanUpTask() {
    print('Clean Up Task');
  }

  @override
  void onInit() {
    super.onInit();
  }

  void onClose() {
    super.onClose();
    print('Init closed');
  }
}
