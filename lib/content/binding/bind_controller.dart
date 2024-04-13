import 'package:get/get.dart';

class BindController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
