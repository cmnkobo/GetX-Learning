import 'package:get/get.dart';

class SimpController extends GetxController {
  var count = 0;
  void simpIncrement() {
    count++;
    update();
  }
}
