import 'package:get/get.dart';

class Student {
  //Classes can be made reactive or observable by making individual variables RX or by making the entire class observable

// individual variables Rx
  var name = 'tom'.obs;
  var age = 25.obs;

// To make tntire class observable
//   Student({this.name, this.age});
//   var name;
//   var age;
}
