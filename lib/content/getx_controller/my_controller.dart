import 'package:get/get.dart';
import 'package:gettxx/content/getx_controller/details.dart';

class MyController extends GetxController {
  var student1 = StudentDetailss(age: 20, name: 'tikiwi').obs;
  void convertUpperCase() {
    student1.update((student1) {
      student1?.name = student1.name.toString().toUpperCase().obs;
    });
  }
}
