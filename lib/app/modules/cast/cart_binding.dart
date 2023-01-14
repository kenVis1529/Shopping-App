import 'package:get/get.dart';
import 'package:shopping_app/app/modules/cast/cart_controller.dart';

class CartBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
