import 'package:get/get.dart';

class WorkersController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    //called everytime when the value of count variable changes
    // ever(count, (callback) => print(count));

    //called everytimee when the value of any variable from the list changes
    // everAll([count], (callback) => print(count));

    //called only once when the variable value changes
    //  once(count, (callback) => print(count));

    //called everytime the user stops typing for 1 sec
    debounce(
      count,
      (callback) =>
          print('When the user stops typing for one sec, the value of count'),
      time: const Duration(seconds: 1),
    );

    /* ignore all changes within 3 secs
    imagine that the user can earn coins by clicking on something
    if he clicked 300 times in the same munites
    he would have 300 coins , using interval
    you can set a time frame for 3 secs
    and then ecen clicking 300 or 3000 times
    the maximum he would get in 1 mins would be 20 coins
    clicking 300 or 1 million times */

    interval(
      count,
      (callback) => print('ignore all changes'),
      time: const Duration(seconds: 3),
    );

    // TODO: implement onInit
    super.onInit();
  }
}
