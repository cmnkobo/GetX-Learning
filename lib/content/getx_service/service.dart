import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  /* this class is like a getx controller
  it shares the same lifecyclw like (onInit(), onReady(), onClosed())
  it just notifies Getx dependency injection system
  that the sub class can not be removed from the memory */
  Future<void> incrementCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await preferences.setInt('counter', counter);
  }
}
