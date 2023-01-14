import 'package:get/get.dart';
import 'package:shopping_app/app/data/models/product.dart';

class CartController extends GetxController {
  final cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalCost => cartItems.fold(0, (sum, item) => sum + item.price);

  void addProduct(Product product) {
    cartItems.add(product);
  }
}
