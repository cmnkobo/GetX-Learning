import 'dart:ui';

import 'package:get/get.dart';

class InterCont extends GetxController {
  void langChange(var tom1, var tom2) {
    var locale = Locale(tom1, tom2);
    Get.updateLocale(locale);
  }
}
