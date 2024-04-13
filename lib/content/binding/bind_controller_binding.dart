import 'package:get/get.dart';
import 'package:gettxx/content/binding/bind_controller.dart';

class BindControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindController>(() => BindController());
  }
}
