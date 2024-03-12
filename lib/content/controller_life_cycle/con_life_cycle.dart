import 'dart:async';
import 'package:get/get.dart';

class LifeCycleController extends GetxController {
  var count = 0;

  void lifeIncrement() async {
    await Future<int>.delayed(
      const Duration(seconds: 3),
    );
    count++;
    update();
  }

  void cleanUpTask() {
    print('Clean Up Tasks');
  }

  // // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   print('Init Called');
  //   super.onInit();
  // }

  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  // }
}
