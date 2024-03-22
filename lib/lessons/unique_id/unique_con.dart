import 'package:get/get.dart';

class UniqueIdController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['txtCount']);
  }
}
