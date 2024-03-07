import 'package:get/get.dart';
import 'package:getxx/lessons/getx_controller/student_controller.dart';

class MyController extends GetxController {
  // var student1 = StudentSeperate();
  // void studentUpper() {
  //   student1.name.value = student1.name.value.toUpperCase();
  // }

  var student1 = StudentSeperate(age: 12, name: 'kiwiiii').obs;

  void studentUpper() {
    student1.update((student1) {
      student1?.name = student1.name.toString().toUpperCase();
    });
  }
}
