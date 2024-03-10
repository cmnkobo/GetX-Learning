import 'package:get/get.dart';

class SimpStateClass extends GetxController {
  var count = 0;
  void incrementCount() {
    count++;
    update();
  }
}
