import 'dart:async';

import 'package:get/get.dart';

class CycleController extends GetxController {
  var count = 0;

  void cycleIncrement() async {
    Timer.periodic(Duration(seconds: 3), (timer) {
      count++;
      update();
    });
    // await Future<int>.delayed(
    //   const Duration(milliseconds: 4),
    // );
    // count++;
    // update();
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
