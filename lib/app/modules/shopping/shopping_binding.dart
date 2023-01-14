import 'package:get/get.dart';
import 'package:shopping_app/app/modules/shopping/shopping_controler.dart';

class ShoppingBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => ShoppingController());
  }
}
