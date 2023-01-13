import 'package:get/get.dart';
import 'package:shopping_app/app/data/models/product.dart';

class ShoppingController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    var productResult = [
      Product(
          id: "1",
          productName: "Mouse",
          productImage: "mouse.png",
          productDescription: "Use for laptop",
          price: 12),
      Product(
          id: "2",
          productName: "Mouse pad",
          productImage: "mouse-pad.png",
          productDescription: "Use for mouse",
          price: 10),
      Product(
          id: "3",
          productName: "Laptop",
          productImage: "laptop.png",
          productDescription: "Use for yourself",
          price: 50),
    ];
    products.value = productResult;
  }
}
