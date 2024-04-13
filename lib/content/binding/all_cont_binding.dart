import 'package:get/get.dart';
import 'package:gettxx/content/binding/bind_controller.dart';
import 'package:gettxx/content/binding/home_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindController>(() => BindController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
