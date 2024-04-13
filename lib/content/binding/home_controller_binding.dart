import 'package:get/get.dart';
import 'package:gettxx/content/binding/home_controller.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
